import "../../Interfaces/GameObjects/ICrafting/ICraftingMaterials.sol";
pragma solidity ^0.8.0;

contract UpgradingLeatherRecipes {

    function upgradeRecipe(ICraftingMaterials.CraftingMaterial material, uint amount) external view returns (ICraftingMaterials.UpgradingRecipe memory _recipe){
        if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_RAGGED_LEATHER) {
            return ProcessedRaggedLeather(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_RAW_LEATHER) {
            return ProcessedRawLeather(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_THIN_LEATHER) {
            return ProcessedThinLeather(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_COARSE_LEATHER) {
            return ProcessedCoarseLeather(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_RUGGED_LEATHER) {
            return ProcessedRuggedLeather(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_THICK_LEATHER) {
            return ProcessedThickLeather(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_REINFORCED_LEATHER) {
            return ProcessedReinforcedLeather(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_HARDENED_LEATHER) {
            return ProcessedHardenedLeather(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.PROCESSED_LORDLY_LEATHER) {
            return ProcessedLordlyLeather(amount);
        } else {
            revert("invalid");
        }
    }


    function ProcessedRaggedLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_TATTERED_LEATHER;
        _recipe.amount = amount * 10;
    }

    function ProcessedRawLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_RAGGED_LEATHER;
        _recipe.amount = amount * 10;
    }

    function ProcessedThinLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_RAW_LEATHER;
        _recipe.amount = amount * 10;
    }

    function ProcessedCoarseLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_THIN_LEATHER;
        _recipe.amount = amount * 10;
    }

    function ProcessedRuggedLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_COARSE_LEATHER;
        _recipe.amount = amount * 10;
    }

    function ProcessedThickLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_RUGGED_LEATHER;
        _recipe.amount = amount * 10;
    }

    function ProcessedReinforcedLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_THICK_LEATHER;
        _recipe.amount = amount * 10;
    }

    function ProcessedHardenedLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_REINFORCED_LEATHER;
        _recipe.amount = amount * 10;
    }

    function ProcessedLordlyLeather(uint amount) public view returns (ICraftingMaterials.UpgradingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PROCESSED_HARDENED_LEATHER;
        _recipe.amount = amount * 10;
    }
}
