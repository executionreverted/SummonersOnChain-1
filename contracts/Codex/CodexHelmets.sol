import "../Interfaces/GameObjects/IGameObjects.sol";
pragma solidity ^0.8.0;

contract CodexHelmets {
    string constant public index = "Codex";
    string constant public class = "Helmets";

    function helmet(uint _id, uint _tier) public pure returns (GameObjects.Helmet memory) {
        if (_id == 1) {
            return DummyHelmet(_tier);
        }

        revert("invalid");
    }

    function DummyHelmet(uint tier) public pure returns (GameObjects.Helmet memory _helmet) {
        _helmet.metadata.id = 1;
        _helmet.metadata.baseType = GameObjects.ItemType.HELMET;
        _helmet.metadata.name = "Dummy Helmet";
        _helmet.metadata.description = "Dummy Helmet is best helmet";
        _helmet.metadata.upgradable = true;

        _helmet.requirement.level = 1;
        _helmet.requirement.classRequirement = new GameObjects.Class[](0);
        _helmet.requirement.statRequirement = GameObjects.Stats({STR : 0, DEX : 0, AGI : 0, INT : 0, VIT : 0, LUCK : 0});

        _helmet.statBonus = GameObjects.Stats({STR : 0, DEX : 0, AGI : 0, INT : 0, VIT : 0, LUCK : 0});
        _helmet.generatedStatBonus = GameObjects.GeneratedStats({P_ATK : 1, M_ATK : 1, P_DEF : 1, M_DEF : 1, ACCURACY : 1, DODGE : 1, CRIT : 1, CRIT_MULTIPLIER : 1});
    }
}
