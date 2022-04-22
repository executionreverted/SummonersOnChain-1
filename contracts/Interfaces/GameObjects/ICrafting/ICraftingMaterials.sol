pragma solidity ^0.8.0;

interface ICraftingMaterials {

    enum MaterialTypes {
        ORE,
        WOOD,
        CLOTH
    }

    enum CraftingMaterial {
        COPPER, TIN, IRON, SILVER, GOLD, PLATINUM, MYTHRIL, ORICALCHUM,
        OBSIDIAN, LUMINITE,

        COPPER_INGOT, TIN_INGOT, IRON_INGOT, SILVER_INGOT, GOLD_INGOT,
        PLATINUM_INGOT, MYTHRIL_INGOT, ORICALCHUM_INGOT,
        OBSIDIAN_INGOT, LUMINITE_INGOT,


        GREEN_WOOD, SOFT_WOOD, AGED_WOOD, HARD_WOOD, PETRIFIED_WOOD, RED_OAK_WOOD,
        ELDER_WOOD, ANCIENT_WOOD, EBONY_WOOD, SNAKEWOOD,
        GREEN_WOOD_PLANK, SOFT_WOOD_PLANK, AGED_WOOD_PLANK, HARD_WOOD_PLANK,
        PETRIFIED_WOOD_PLANK, RED_OAK_WOOD_PLANK, ELDER_WOOD_PLANK,
        ANCIENT_WOOD_PLANK, EBONY_WOOD_PLANK, SNAKEWOOD_PLANK,


        TATTERED_LEATHER, RAGGED_LEATHER, RAW_LEATHER, THIN_LEATHER, COARSE_LEATHER,
        RUGGED_LEATHER, THICK_LEATHER,
        REINFORCED_LEATHER, HARDENED_LEATHER, LORDLY_LEATHER,

        PROCESSED_TATTERED_LEATHER, PROCESSED_RAGGED_LEATHER, PROCESSED_RAW_LEATHER,
        PROCESSED_THIN_LEATHER, PROCESSED_COARSE_LEATHER, PROCESSED_RUGGED_LEATHER,
        PROCESSED_THICK_LEATHER, PROCESSED_REINFORCED_LEATHER,
        PROCESSED_HARDENED_LEATHER, PROCESSED_LORDLY_LEATHER,


        JUTE, WOOL, COTTON, LINEN, SILK,
        HEMP, CASHMERE, VISCOSE, LYOCELL, RAYON,

        BOLT_OF_JUTE, BOLT_OF_WOOL, BOLT_OF_COTTON, BOLT_OF_LINEN,
        BOLT_OF_SILK, BOLT_OF_HEMP, BOLT_OF_CASHMERE, BOLT_OF_VISCOSE,
        BOLT_OF_LYOCELL, BOLT_OF_RAYON
    }

    struct ProcessingRecipe {
        CraftingMaterial requiredMaterial;
        uint amount;
        uint requiredTime;
    }

    struct ProcessingProcess {
        CraftingMaterial rewardMaterial;
        uint amount;
        uint when;
        uint startingDate;
        address who;
        bool isClaimed;
    }

    struct UpgradingRecipe {
        CraftingMaterial requiredMaterial;
        uint amount;
    }

}
