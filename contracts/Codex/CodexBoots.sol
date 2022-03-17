import "../Interfaces/GameObjects/IGameObjects.sol";
pragma solidity ^0.8.0;

contract CodexBoots {
    string constant public index = "Codex";
    string constant public class = "Boots";

    function boots(uint _id, uint8 _tier) public pure returns (GameObjects.Boots memory) {
        if (_id == 1) {
            return DummyShield(_tier);
        }

        revert("invalid");
    }

    function DummyShield(uint8 tier) public pure returns (GameObjects.Boots memory _boots) {
        _boots.metadata.id = 1;
        _boots.metadata.baseType = GameObjects.ItemType.BOOTS;
        _boots.metadata.name = "Dummy Shield";
        _boots.metadata.description = "Dummy Shield is best armor";
        _boots.metadata.upgradable = true;

        _boots.requirement.level = 1;
        _boots.requirement.classRequirement = new GameObjects.Class[](0);
        _boots.requirement.statRequirement = GameObjects.Stats({STR : 0, DEX : 0, AGI : 0, INT : 0, VIT : 0, LUCK : 0});

        _boots.statBonus = GameObjects.Stats({STR : 0, DEX : 0, AGI : 0, INT : 0, VIT : 0, LUCK : 0});
    }
}
