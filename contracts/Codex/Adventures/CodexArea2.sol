import {IAdventure, GameObjects, IGameRewards, ICraftingMaterials} from "../../Interfaces/GameObjects/IAdventure.sol";
import {IMonster} from "../../Interfaces/GameObjects/IMonster.sol";
pragma solidity ^0.8.0;

contract CodexArea2 {
    string constant public index = "Codex";
    string constant public class = "Area2";
    string constant public version = "0.0.1";

    function getAllLevels() external view returns (IAdventure.AdventureLevel[] memory){
        IAdventure.AdventureLevel[] memory result = new IAdventure.AdventureLevel[](20);
        for (uint i = 1; i <= 20; i++) {
            result[i-1] = adventureLevel(i);
        }
        return result;
    }

    function adventureLevel(uint level) public view returns (IAdventure.AdventureLevel memory) {

        if (level == 1) {return AbandonedMines1();}
        else if (level == 2) {return AbandonedMines2();}
        else if (level == 3) {return AbandonedMines3();}
        else if (level == 4) {return AbandonedMines4();}
        else if (level == 5) {return AbandonedMines5();}
        else if (level == 6) {return AbandonedMines6();}
        else if (level == 7) {return AbandonedMines7();}
        else if (level == 8) {return AbandonedMines8();}
        else if (level == 9) {return AbandonedMines9();}
        else if (level == 10) {return AbandonedMines10();}
        else if (level == 11) {return AbandonedMines11();}
        else if (level == 12) {return AbandonedMines12();}
        else if (level == 13) {return AbandonedMines13();}
        else if (level == 14) {return AbandonedMines14();}
        else if (level == 15) {return AbandonedMines15();}
        else if (level == 16) {return AbandonedMines16();}
        else if (level == 17) {return AbandonedMines17();}
        else if (level == 18) {return AbandonedMines18();}
        else if (level == 19) {return AbandonedMines19();}
        else if (level == 20) {return AbandonedMines20();}

        revert("invalid");
    }

    function AbandonedMines1() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 1;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 38e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 55e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 4e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 6e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](1);

        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.COPPER,
        min : 24,
        max : 36
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 1,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 2,
        level : 1
        });
    }

    function AbandonedMines2() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 5;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 75e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 110e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 8e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 11e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.TIN,
        min : 12,
        max : 17
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.COPPER,
        min : 13,
        max : 19
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 2,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 3,
        level : 1
        });
    }

    function AbandonedMines3() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 10;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 150e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 220e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 15e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 22e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.TIN,
        min : 18,
        max : 27
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.COPPER,
        min : 6,
        max : 8
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 3,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 4,
        level : 1
        });
    }

    function AbandonedMines4() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 15;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 300e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 440e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 30e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 44e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.IRON,
        min : 11,
        max : 16
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.TIN,
        min : 11,
        max : 16
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 4,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 5,
        level : 1
        });
    }

    function AbandonedMines5() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 20;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 600e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 880e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 60e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 88e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.IRON,
        min : 17,
        max : 25
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.TIN,
        min : 7,
        max : 10
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 5,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 6,
        level : 1
        });
    }

    function AbandonedMines6() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 25;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 1200e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 1760e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 120e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 176e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.SILVER,
        min : 10,
        max : 15
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.IRON,
        min : 12,
        max : 17
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 6,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 7,
        level : 1
        });
    }

    function AbandonedMines7() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 30;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 2400e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 3520e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 240e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 352e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.SILVER,
        min : 17,
        max : 25
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.IRON,
        min : 6,
        max : 9
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 7,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 8,
        level : 1
        });
    }

    function AbandonedMines8() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 35;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 4800e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 7040e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 480e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 704e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.GOLD,
        min : 10,
        max : 15
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.SILVER,
        min : 12,
        max : 17
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 8,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 9,
        level : 1
        });
    }

    function AbandonedMines9() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 40;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 9600e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 14080e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 960e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 1408e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.GOLD,
        min : 12,
        max : 18
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.SILVER,
        min : 5,
        max : 7
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 9,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 10,
        level : 1
        });
    }

    function AbandonedMines10() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 45;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 19200e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 28160e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 1920e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 2816e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.PLATINUM,
        min : 8,
        max : 11
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.GOLD,
        min : 9,
        max : 14
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 10,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 11,
        level : 1
        });
    }

    function AbandonedMines11() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 50;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 38400e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 56320e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 3840e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 5632e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.PLATINUM,
        min : 13,
        max : 19
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.GOLD,
        min : 5,
        max : 7
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 11,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 12,
        level : 1
        });
    }

    function AbandonedMines12() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 55;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 76400e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 112640e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 7640e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 11264e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.MYTHRIL,
        min : 8,
        max : 11
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.PLATINUM,
        min : 9,
        max : 14
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 12,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 13,
        level : 1
        });
    }

    function AbandonedMines13() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 60;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 153600e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 225280e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 15360e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 22528e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.MYTHRIL,
        min : 12,
        max : 17
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.PLATINUM,
        min : 5,
        max : 7
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 13,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 14,
        level : 1
        });
    }

    function AbandonedMines14() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 65;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 307200e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 450560e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 30720e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 45056e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.ORICALCHUM,
        min : 7,
        max : 10
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.MYTHRIL,
        min : 8,
        max : 11
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 14,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 15,
        level : 1
        });
    }

    function AbandonedMines15() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 70;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 614400e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 901120e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 61440e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 90112e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.ORICALCHUM,
        min : 11,
        max : 16
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.MYTHRIL,
        min : 3,
        max : 5
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 15,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 16,
        level : 1
        });
    }

    function AbandonedMines16() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 75;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 1228800e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 1802240e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 122880e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 180224e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.OBSIDIAN,
        min : 6,
        max : 9
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.ORICALCHUM,
        min : 7,
        max : 10
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 16,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 17,
        level : 1
        });
    }

    function AbandonedMines17() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 80;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 2457600e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 3607780e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 245760e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 360778e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.OBSIDIAN,
        min : 9,
        max : 14
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.ORICALCHUM,
        min : 3,
        max : 5
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 17,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 18,
        level : 1
        });
    }

    function AbandonedMines18() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 85;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 4915200e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 7208960e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 491520e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 720896e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.LUMINITE,
        min : 6,
        max : 8
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.OBSIDIAN,
        min : 6,
        max : 9
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 18,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 19,
        level : 1
        });
    }

    function AbandonedMines19() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 90;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 9830400e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 14417920e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 983040e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 1441792e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.LUMINITE,
        min : 8,
        max : 11
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.OBSIDIAN,
        min : 3,
        max : 5
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 19,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 20,
        level : 1
        });
    }

    function AbandonedMines20() public view returns (IAdventure.AdventureLevel memory _level) {
        _level.MonsterLevel = 95;
        _level.Difficulty = 100;

        _level.CurrencyRewards.yieldsGold = true;
        _level.CurrencyRewards.goldRewards.minAmount = 19660800e18;
        _level.CurrencyRewards.goldRewards.maxAmount = 28835840e18;

        _level.CurrencyRewards.yieldsEssence = true;
        _level.CurrencyRewards.essenceRewards.minAmount = 1966080e18;
        _level.CurrencyRewards.essenceRewards.maxAmount = 2883584e18;

        _level.CurrencyRewards.yieldsCraftingMaterial = true;
        _level.CurrencyRewards.materials = new IGameRewards.CraftingMaterialReward[](2);
        _level.CurrencyRewards.materials[0] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.LUMINITE,
        min : 10,
        max : 15
        });

        _level.CurrencyRewards.materials[1] = IGameRewards.CraftingMaterialReward({
        material : ICraftingMaterials.CraftingMaterial.OBSIDIAN,
        min : 6,
        max : 9
        });

        _level.Rewards.pool.yieldsMiscItem = true;
        _level.Rewards.rewards.miscItemRewards.rewards = new IGameRewards.MiscItemReward[](1);
        _level.Rewards.rewards.miscItemRewards.rewards[0] = IGameRewards.MiscItemReward({
        miscType : 1,
        minAmount : 1,
        maxAmount : 3
        });
        _level.Rewards.rewards.miscItemRewards.chanceToDrop = 50;

        _level.MonsterList = new IAdventure.AdventureMonster[](2);
        _level.MonsterList[0] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 20,
        level : 1
        });

        _level.MonsterList[1] = IAdventure.AdventureMonster({
        element : GameObjects.Element.PHYSICAL,
        monsterId : 21,
        level : 1
        });
    }
}