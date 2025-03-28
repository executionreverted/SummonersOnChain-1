import {GameObjects_Elixir} from "../Interfaces/GameObjects/IGameObjects.sol";
pragma solidity ^0.8.0;

contract CodexElixirs {
    string constant public index = "Codex";
    string constant public class = "Elixirs";
    string constant public version = "0.0.1";

    function elixirTurnDuration(uint _id, uint _tier) public pure returns (uint) {
        return elixir(_id, _tier).turnDuration;
    }

    function elixir(uint _id, uint _tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        if (_id == 1) {
            _elixir = EldersPotion(_tier);
        }
        else if (_id == 2) {
            _elixir = TonicOfTranscendence(_tier);
        }
        else if (_id == 3) {
            _elixir = CraftsmansPotion(_tier);
        }
        else if (_id == 4) {
            _elixir = TonicOfAnger(_tier);
        }
        else if (_id == 5) {
            _elixir = PhialOfAgility(_tier);
        }
        else if (_id == 6) {
            _elixir = PotionOfIronSkin(_tier);
        }
        else if (_id == 7) {
            _elixir = ElixirOfSolutions(_tier);
        }
        else if (_id == 8) {
            _elixir = AthletesFlask(_tier);
        }
        else if (_id == 9) {
            _elixir = PerfumeOfBlackwidow(_tier);
        }
        else if (_id == 10) {
            _elixir = VialOfMotherEarth(_tier);
        }
        else if (_id == 11) {
            _elixir = PotionOfCharge(_tier);
        }
        else if (_id == 12) {
            _elixir = ElixirOfFrosty(_tier);
        }
        else if (_id == 13) {
            _elixir = DragonBreathPotion(_tier);
        }
        else if (_id == 14) {
            _elixir = VialOfSpirit(_tier);
        }
        else if (_id == 15) {
            _elixir = NightmareFlask(_tier);
        }
        else if (_id == 16) {
            _elixir = NihilityTonic(_tier);
        }
        else if (_id == 17) {
            _elixir = PhialOfGladiator(_tier);
        }
        else if (_id == 18) {
            _elixir = PotionOfArchmage(_tier);
        }
        else if (_id == 19) {
            _elixir = PotionOfPrecision(_tier);
        }
        else if (_id == 20) {
            _elixir = ExactionPotion(_tier);
        }
        else if (_id == 21) {
            _elixir = MercilessFlask(_tier);
        }
        else if (_id == 22) {
            _elixir = ElixirOfMobility(_tier);
        }
        else if (_id == 23) {
            _elixir = TonicOfToughness(_tier);
        }
        else if (_id == 24) {
            _elixir = PiercingTonic(_tier);
        }

        //        revert("invalid");
    }

    function EldersPotion(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.BonusEXPPercentagePerTier = 2;
        _elixir.bonus.BonusEXPPercentage = 10 + (tier * _elixir.bonus.BonusEXPPercentagePerTier);
        _elixir.turnDuration = 2;
    }

    function TonicOfTranscendence(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.BonusEssencePercentagePerTier = 2;
        _elixir.bonus.BonusEssencePercentage = 3 + (tier * _elixir.bonus.BonusEssencePercentagePerTier);
        _elixir.turnDuration = 3;
    }

    function CraftsmansPotion(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.BonusMaterialPercentagePerTier = 3;
        _elixir.bonus.BonusMaterialPercentage = 5 + (tier * _elixir.bonus.BonusMaterialPercentagePerTier);
        _elixir.turnDuration = 3;
    }

    function TonicOfAnger(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.StatBonusPerTier = 2;
        _elixir.statBonus.STR = 3 + (tier * _elixir.bonus.StatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function PhialOfAgility(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.StatBonusPerTier = 2;
        _elixir.statBonus.AGI = 3 + (tier * _elixir.bonus.StatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function PotionOfIronSkin(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.StatBonusPerTier = 2;
        _elixir.statBonus.VIT = 3 + (tier * _elixir.bonus.StatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function ElixirOfSolutions(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.StatBonusPerTier = 2;
        _elixir.statBonus.INT = 3 + (tier * _elixir.bonus.StatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function AthletesFlask(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.StatBonusPerTier = 2;
        _elixir.statBonus.DEX = 3 + (tier * _elixir.bonus.StatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function PerfumeOfBlackwidow(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.StatBonusPerTier = 2;
        _elixir.statBonus.LUCK = 3 + (tier * _elixir.bonus.StatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function VialOfMotherEarth(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.EleStatBonusPerTier = 2;
        _elixir.elementalStats.ElementalAtk.EARTH_ATK = 3 + _elixir.bonus.EleStatBonusPerTier;
        _elixir.elementalStats.ElementalDef.EARTH_DEF = 3 + _elixir.bonus.EleStatBonusPerTier;
        _elixir.turnDuration = 2;
    }

    function PotionOfCharge(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.EleStatBonusPerTier = 2;
        _elixir.elementalStats.ElementalAtk.LIGHTNING_ATK = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.elementalStats.ElementalDef.LIGHTNING_DEF = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function ElixirOfFrosty(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.EleStatBonusPerTier = 2;
        _elixir.elementalStats.ElementalAtk.COLD_ATK = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.elementalStats.ElementalDef.COLD_DEF = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function DragonBreathPotion(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.EleStatBonusPerTier = 2;
        _elixir.elementalStats.ElementalAtk.FIRE_ATK = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.elementalStats.ElementalDef.FIRE_DEF = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function VialOfSpirit(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.EleStatBonusPerTier = 2;
        _elixir.elementalStats.ElementalAtk.HOLY_ATK = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.elementalStats.ElementalDef.HOLY_DEF = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function NightmareFlask(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.EleStatBonusPerTier = 2;
        _elixir.elementalStats.ElementalAtk.DARK_ATK = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.elementalStats.ElementalDef.DARK_DEF = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function NihilityTonic(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.EleStatBonusPerTier = 2;
        _elixir.elementalStats.ElementalAtk.VOID_ATK = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.elementalStats.ElementalDef.VOID_DEF = 3 + (tier * _elixir.bonus.EleStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function PhialOfGladiator(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.GenStatBonusPerTier = 2;
        _elixir.generatedStatBonus.P_ATK = 2 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.generatedStatBonus.P_DEF = 2 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function PotionOfArchmage(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.GenStatBonusPerTier = 2;
        _elixir.generatedStatBonus.M_ATK = 2 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.generatedStatBonus.M_DEF = 2 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function PotionOfPrecision(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.GenStatBonusPerTier = 2;
        _elixir.generatedStatBonus.ACCURACY = 2 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function ExactionPotion(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.GenStatBonusPerTier = 2;
        _elixir.generatedStatBonus.CRIT = 1 + (_elixir.bonus.GenStatBonusPerTier * tier);
        _elixir.turnDuration = 2;
    }

    function MercilessFlask(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.GenStatBonusPerTier = 2;
        _elixir.generatedStatBonus.CRIT_MULTIPLIER = 5 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function ElixirOfMobility(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.GenStatBonusPerTier = 2;
        _elixir.generatedStatBonus.DODGE = 2 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function TonicOfToughness(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.generatedStatBonus.HP = 3;
        _elixir.bonus.GenStatBonusPerTier = 2 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.turnDuration = 2;
    }

    function PiercingTonic(uint tier) public pure returns (GameObjects_Elixir.Elixir memory _elixir) {
        _elixir.bonus.GenStatBonusPerTier = 2;
        _elixir.generatedStatBonus.INFUSION = 2 + (tier * _elixir.bonus.GenStatBonusPerTier);
        _elixir.turnDuration = 2;
    }
}
