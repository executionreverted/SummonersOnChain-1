import {GameObjects_Equipments} from "../GameObjects/IGameObjects.sol";

pragma solidity ^0.8.15;

interface ICodexMisc {
    function item(uint _id) external pure returns (GameObjects_Equipments.MiscItem memory _misc);
}
