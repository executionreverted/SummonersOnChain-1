import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ERC1155Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import {ISummoners, INavigator, InitNavigator} from "../Core/Navigator/InitNavigator.sol";
import {GameObjects} from "../Interfaces/GameObjects/IGameObjects.sol";
import {EXPCardLib} from "../Interfaces/NonFungibles/EXP/EXPCardLib.sol";

pragma solidity ^0.8.0;
// @TODO implement card redeems and burns for summoners. but first define summoners contract.
contract EXPCards is Initializable, OwnableUpgradeable, InitNavigator, ERC1155Upgradeable {
    function initialize(address _navigator, string memory _baseUri) external initializer {
        initializeNavigator(_navigator);
        __ERC1155_init(_baseUri);
    }

    function redeemCard(uint _cardId, uint _summoner, uint amount) external senderIsSummonerOwner(_summoner) {
        require(balanceOf(msg.sender, _cardId) >= amount && amount > 0, "balance issue");
        uint expReward = EXPCardLib.cardIdToExp(_cardId) * amount;
        Summoners.rewardXP(_summoner, expReward);
        _burn(msg.sender, _cardId, amount);
    }

    function mintExpCard(uint _card, uint _summoner, uint amount) external onlyGameContracts {
        _mint(msg.sender, _card, amount, new bytes(0));
    }
}
