import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../../Core/Navigator/InitNavigator.sol";
import "../../Interfaces/GameObjects/IMonster.sol";
import "../../Interfaces/Codex/IBaseEnemyStats.sol";

pragma solidity ^0.8.0;

contract CodexEnemiesLightning is InitNavigator {
    IBaseEnemyStats baseStats;

    function getAllMonsters() external view returns (IMonster.Monster[] memory){
        IMonster.Monster[] memory result = new IMonster.Monster[](22);
        for (uint i = 1; i < 23; i++) {
            result[i-1] = enemy(i, 1);
        }
        return result;
    }

    function enemy(uint256 _id, uint lvl)
    public
    view
    returns (IMonster.Monster memory)
    {
        if (_id == 1) {
            return LightningElemental(lvl);
        } else if (_id == 2) {
            return StormWorm(lvl);
        } else if (_id == 3) {
            return ShockingNeedle(lvl);
        } else if (_id == 4) {
            return Wolfury(lvl);
        } else if (_id == 5) {
            return Shocksnake(lvl);
        } else if (_id == 6) {
            return Voltarion(lvl);
        } else if (_id == 7) {
            return HauntingStorm(lvl);
        } else if (_id == 8) {
            return SparkyOgre(lvl);
        } else if (_id == 9) {
            return ExaltedPylon(lvl);
        } else if (_id == 10) {
            return StormNagaClan(lvl);
        } else if (_id == 11) {
            return LightningSculpture(lvl);
        } else if (_id == 12) {
            return WizardLizard(lvl);
        } else if (_id == 13) {
            return GiantStormHawk(lvl);
        } else if (_id == 14) {
            return Thundervolt(lvl);
        } else if (_id == 15) {
            return Electra(lvl);
        } else if (_id == 16) {
            return Stormveil(lvl);
        } else if (_id == 17) {
            return Thornado(lvl);
        } else if (_id == 18) {
            return Levin(lvl);
        } else if (_id == 19) {
            return ThunderSerpent(lvl);
        } else if (_id == 20) {
            return Voltvoid(lvl);
        } else if (_id == 21) {
            return StormbonetheUndead(lvl);
        } else if (_id == 22) {
            return LightningBehemoth(lvl);
        }
        revert();
    }

    function initialize(address _navigator) external initializer {
        initializeNavigator(_navigator);
        baseStats = IBaseEnemyStats(contractAddress(INavigator.CONTRACT.BASE_ENEMY_STATS));
    }

    //76-100 LIGHTNING
    function LightningElemental(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function StormWorm(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function ShockingNeedle(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Wolfury(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Shocksnake(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Voltarion(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function HauntingStorm(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function SparkyOgre(uint lvl) public view returns (IMonster.Monster memory _enemy) {

        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function ExaltedPylon(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function StormNagaClan(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function LightningSculpture(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function WizardLizard(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function GiantStormHawk(uint lvl) public view returns (IMonster.Monster memory _enemy) {

        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Thundervolt(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Electra(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Stormveil(uint lvl) public view returns (IMonster.Monster memory _enemy) {

        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Thornado(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Levin(uint lvl) public view returns (IMonster.Monster memory _enemy) {

        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function ThunderSerpent(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function Voltvoid(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function StormbonetheUndead(uint lvl) public view returns (IMonster.Monster memory _enemy) {


        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

    function LightningBehemoth(uint lvl) public view returns (IMonster.Monster memory _enemy) {

        _enemy.EnemyStats.INT = baseStats.enemySTAT(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyGeneratedStats = GameObjects.GeneratedStats({
        HP : baseStats.enemyHP(GameObjects.Element.LIGHTNING, lvl),
        P_ATK : 0,
        M_ATK : 0,
        P_DEF : baseStats.enemyPDEF(GameObjects.Element.LIGHTNING, lvl),
        M_DEF : baseStats.enemyMDEF(GameObjects.Element.LIGHTNING, lvl),
        ACCURACY : baseStats.enemyACC(GameObjects.Element.LIGHTNING, lvl),
        DODGE : baseStats.enemyDODGE(GameObjects.Element.LIGHTNING, lvl),
        CRIT : baseStats.enemyCRIT(GameObjects.Element.LIGHTNING, lvl),
        CRIT_MULTIPLIER : baseStats.enemyCRIT_MULT(GameObjects.Element.LIGHTNING, lvl),
        INFUSION : 0
        });

        _enemy.damageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.SummonerDamageType = GameObjects.Element.LIGHTNING;
        _enemy.EnemyElementalStats.ElementalAtk.LIGHTNING_ATK = baseStats.enemyATK(GameObjects.Element.LIGHTNING, lvl);

        _enemy.EnemyElementalStats.ElementalDef = GameObjects.ElementalDef({
        FIRE_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        COLD_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        EARTH_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        LIGHTNING_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        DARK_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        HOLY_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl),
        VOID_DEF : baseStats.enemyEDEF(GameObjects.Element.LIGHTNING, lvl)
        });
        _enemy.EnemyElementalStats.ElementalDef.DARK_DEF -= (_enemy.EnemyElementalStats.ElementalDef.DARK_DEF * 10) / 100;
    }

}
