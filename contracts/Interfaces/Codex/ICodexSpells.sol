import {GameObjects, ISpell} from "../GameObjects/ISpell.sol";
pragma solidity ^0.8.15;

interface ICodexSpells {
    function spell(uint _id, uint _tier) external pure returns (ISpell.Spell memory);
    function classSpells(GameObjects.Class _class) external view returns(bool[11] memory);
}
