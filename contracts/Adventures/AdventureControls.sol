import "../Core/Navigator/InitNavigator.sol";

pragma solidity ^0.8.0;

interface Adventures {
    function attack(uint summoner, uint multiplier) external;
}

contract AdventureControls is InitNavigator {

    function initialize(address _navigator) external initializer {
        initializeNavigator(_navigator);
    }


    function basicAttack(uint summoner) external ensureNotPaused
    senderIsSummonerOwner(summoner) {
        Adventures(contractAddress(INavigator.CONTRACT.ADVENTURES)).attack(summoner, 100);
    }
}
