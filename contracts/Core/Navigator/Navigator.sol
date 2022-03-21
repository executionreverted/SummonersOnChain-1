pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../../Interfaces/Core/Navigator/INavigator.sol";
import "../Security/Guard.sol";


interface ERC721 {
    function ownerOf(uint256 tokenId) external view returns (address);
}

contract Navigator is Initializable, OwnableUpgradeable, Guard, INavigator {
    ERC721 Seals;

    bool public _isPaused;

    mapping(uint => address) public CONTRACTS;

    function initialize(address _seals) public initializer {
        Seals = ERC721(_seals);
        __Ownable_init();
    }

    function setGameContractsAddresses(address[] memory _gameContractAddresses, bool value) external override onlyOwner {
        for (uint i = 0; i < _gameContractAddresses.length; i++) {
            CONTRACTS[i] = _gameContractAddresses[i];
        }
        addOrRemoveGameContracts(_gameContractAddresses, value);
    }

    function getContractAddress(INavigator.CONTRACT _contractId) external override view returns (address){
        return CONTRACTS[uint(_contractId)];
    }

    function isGameContract(address _address) external override view returns (bool) {
        return gameContracts[_address];
    }

    function flipGameState() external onlyOwner {
        _isPaused = !_isPaused;
    }

    function isPaused() public virtual view override returns (bool) {
        return _isPaused;
    }

    function sealIsOwned(uint summoner) external override returns (bool) {
        if (Seals.ownerOf(summoner) == msg.sender) {
            return true;
        } else revert UnauthorizedSender(msg.sender, "CALLER IS NOT THE OWNER");
    }

    function nftIsOwned(address _address, uint _tokenId) external override returns (bool) {
        if (ERC721(_address).ownerOf(_tokenId) == msg.sender) {
            return true;
        } else revert UnauthorizedSender(msg.sender, "CALLER IS NOT THE OWNER");
    }

    function onlyGameContracts() external override _onlyGameContracts returns (bool) {
        return true;
    }

    modifier _onlyGameContracts() {
        if (!gameContracts[msg.sender]) {
            revert UnauthorizedSender(tx.origin, "Not a game contract");
        }
        _;
    }
}
