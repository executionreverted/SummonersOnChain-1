import {ISpell, GameObjects} from "../../Interfaces/GameObjects/ISpell.sol";
pragma solidity ^0.8.0;

contract CodexSpellsVoid {

    function spell(uint _id, uint _tier) public pure returns (ISpell.Spell memory) {
        if (_id == 1) {return VoidStrike(_tier);}
        else if (_id == 2) {return VoidLink(_tier);}
        else if (_id == 3) {return AbyssalBreath(_tier);}
        else if (_id == 4) {return HarbingerOfVoid(_tier);}
        else if (_id == 5) {return VoidRift(_tier);}
        else if (_id == 6) {return RewindTime(_tier);}
        else if (_id == 7) {return EssenceOfTheNothingness(_tier);}
        else if (_id == 8) {return Rebirth(_tier);}

        revert("invalid");
    }

    function VoidStrike(uint tier) public pure returns (ISpell.Spell memory _spell) {
        _spell.id = 1;
        _spell.cooldown = 3;
        _spell.spellType = ISpell.SpellType.ATTACK;

        _spell.attackProps.element = GameObjects.Element.VOID;
        _spell.attackProps.damageMultiplier = 25;
        _spell.attackProps.multiplierBonusPerTier = 5;
        _spell.attackProps.infusion = 3;
        _spell.attackProps.infusionBonusPerTier = 1;

        _spell.maxSpellLevel = 12;

        _spell.learningCost = 24e18;

        _spell.upgradeCostMultiplier = 2;

        _spell.requirements.level = 2;
        _spell.requirements.levelRequirementPerTier = 3;
    }

    function VoidLink(uint tier) public pure returns (ISpell.Spell memory _spell) {
        _spell.id = 2;
        _spell.cooldown = 4;
        _spell.spellType = ISpell.SpellType.ATTACK;

        _spell.attackProps.element = GameObjects.Element.VOID;
        _spell.attackProps.damageMultiplier = 30;
        _spell.attackProps.multiplierBonusPerTier = 5;
        _spell.attackProps.infusion = 3;
        _spell.attackProps.infusionBonusPerTier = 1;

        _spell.maxSpellLevel = 12;

        _spell.learningCost = 48e18;

        _spell.upgradeCostMultiplier = 3;

        _spell.requirements.level = 6;
        _spell.requirements.levelRequirementPerTier = 3;
    }

    function AbyssalBreath(uint tier) public pure returns (ISpell.Spell memory _spell) {
        _spell.id = 3;
        _spell.cooldown = 5;
        _spell.spellType = ISpell.SpellType.LIFESTEAL;

        _spell.attackProps.element = GameObjects.Element.VOID;
        _spell.attackProps.damageMultiplier = 0;
        _spell.attackProps.multiplierBonusPerTier = 3;
        _spell.attackProps.infusion = 3;
        _spell.attackProps.infusionBonusPerTier = 1;

        _spell.healingProps.maxAmount = 20;
        _spell.healingProps.maxAmount = 40;
        _spell.healingProps.bonusHealingPerTier = 5;

        _spell.maxSpellLevel = 10;

        _spell.learningCost = 72e18;

        _spell.upgradeCostMultiplier = 3;

        _spell.requirements.level = 12;
        _spell.requirements.levelRequirementPerTier = 4;
    }

    function HarbingerOfVoid(uint tier) public pure returns (ISpell.Spell memory _spell) {
        _spell.id = 4;
        _spell.cooldown = 4;
        _spell.spellType = ISpell.SpellType.ATTACK;

        _spell.attackProps.element = GameObjects.Element.VOID;
        _spell.attackProps.damageMultiplier = 35;
        _spell.attackProps.multiplierBonusPerTier = 5;
        _spell.attackProps.infusion = 3;
        _spell.attackProps.infusionBonusPerTier = 1;

        _spell.maxSpellLevel = 8;

        _spell.learningCost = 96e18;

        _spell.upgradeCostMultiplier = 4;

        _spell.requirements.level = 16;
        _spell.requirements.levelRequirementPerTier = 6;
    }

    function VoidRift(uint tier) public pure returns (ISpell.Spell memory _spell) {
        _spell.id = 5;
        _spell.cooldown = 5;
        _spell.spellType = ISpell.SpellType.ATTACK;

        _spell.attackProps.element = GameObjects.Element.VOID;
        _spell.attackProps.damageMultiplier = 40;
        _spell.attackProps.multiplierBonusPerTier = 5;
        _spell.attackProps.infusion = 5;
        _spell.attackProps.infusionBonusPerTier = 1;

        _spell.maxSpellLevel = 6;

        _spell.learningCost = 128e18;

        _spell.upgradeCostMultiplier = 6;

        _spell.requirements.level = 24;
        _spell.requirements.levelRequirementPerTier = 8;
    }

    function RewindTime(uint tier) public pure returns (ISpell.Spell memory _spell) {
        _spell.id = 6;
        _spell.cooldown = 6;
        _spell.spellType = ISpell.SpellType.LIFESTEAL;

        _spell.attackProps.element = GameObjects.Element.VOID;
        _spell.attackProps.damageMultiplier = 10;
        _spell.attackProps.multiplierBonusPerTier = 10;
        _spell.attackProps.infusion = 3;
        _spell.attackProps.infusionBonusPerTier = 1;

        _spell.healingProps.maxAmount = 35;
        _spell.healingProps.maxAmount = 55;
        _spell.healingProps.bonusHealingPerTier = 10;

        _spell.maxSpellLevel = 4;

        _spell.learningCost = 160e18;

        _spell.upgradeCostMultiplier = 12;

        _spell.requirements.level = 32;
        _spell.requirements.levelRequirementPerTier = 13;
    }

    function EssenceOfTheNothingness(uint tier) public pure returns (ISpell.Spell memory _spell) {
        _spell.id = 7;
        _spell.cooldown = 6;
        _spell.spellType = ISpell.SpellType.ATTACK;

        _spell.attackProps.element = GameObjects.Element.VOID;
        _spell.attackProps.damageMultiplier = 50;
        _spell.attackProps.multiplierBonusPerTier = 25;
        _spell.attackProps.infusion = 15;
        _spell.attackProps.infusionBonusPerTier = 1;

        _spell.maxSpellLevel = 3;

        _spell.learningCost = 192e18;

        _spell.upgradeCostMultiplier = 16;

        _spell.requirements.level = 40;
        _spell.requirements.levelRequirementPerTier = 18;
    }

    function Rebirth(uint tier) public pure returns (ISpell.Spell memory _spell) {
        _spell.id = 8;
        _spell.cooldown = 7;
        _spell.spellType = ISpell.SpellType.HEALING;

        _spell.healingProps.maxAmount = 100;
        _spell.healingProps.maxAmount = 100;
        _spell.healingProps.bonusHealingPerTier = 0;

        _spell.maxSpellLevel = 2;

        _spell.learningCost = 240e18;

        _spell.upgradeCostMultiplier = 24;

        _spell.requirements.level = 48;
        _spell.requirements.levelRequirementPerTier = 26;
    }
}
