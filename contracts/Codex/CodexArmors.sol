import "./Common/UpgradeableCodex.sol";
import "../Inventory/EquipableUtils.sol";
pragma solidity ^0.8.0;

contract CodexArmors is UpgradeableCodex {
    string constant public index = "Codex";
    string constant public class = "Armors";
    string constant public version = "0.0.1";

    function amulet(EquippedItemStruct memory _equipable) public view returns (GameObjects.Armor memory) {
        GameObjects.Armor memory _armor;
        GameObjects.Prefix memory _prefix;
        GameObjects.Suffix memory _suffix;

        if (_equipable.itemId == 1) {
            _armor = DummyArmor(_equipable.itemTier);
            _prefix = PrefixContract.prefix(_equipable.prefixId, _equipable.prefixTier);
            _suffix = SuffixContract.suffix(_equipable.suffixId, _equipable.suffixTier);
        }

        revert("invalid");
    }

    function prefixAndSuffix(uint _prefix, uint _prefixTier, uint _suffix, uint _suffixTier) internal view returns (GameObjects.Prefix memory, GameObjects.Suffix memory) {
        GameObjects.Prefix memory prefix = PrefixContract.prefix(_prefix, _prefixTier);
        GameObjects.Suffix memory suffix = SuffixContract.suffix(_suffix, _suffixTier);

        return (prefix, suffix);
    }

    function DummyArmor(uint tier) public pure returns (GameObjects.Armor memory _armor) {
        _armor.metadata.id = 1;
        _armor.metadata.baseType = GameObjects.ItemType.ARMOR;
        _armor.metadata.name = "Dummy Armor";
        _armor.metadata.description = "Dummy Armor is best amulet";
        _armor.metadata.upgradable = true;

        _armor.requirement.level = 1;
        _armor.requirement.classRequirement = new GameObjects.Class[](0);
        _armor.requirement.statRequirement = GameObjects.Stats({STR : 0, DEX : 0, AGI : 0, INT : 0, VIT : 0, LUCK : 0});

        _armor.statBonus = GameObjects.Stats({STR : 0, DEX : 0, AGI : 0, INT : 0, VIT : 0, LUCK : 0});
        _armor.generatedStatBonus = GameObjects.GeneratedStats({HP : 1, P_ATK : 1, M_ATK : 1, P_DEF : 1, M_DEF : 1, ACCURACY : 1, DODGE : 1, CRIT : 1, CRIT_MULTIPLIER : 1, INFUSION : 0});
    }
}
