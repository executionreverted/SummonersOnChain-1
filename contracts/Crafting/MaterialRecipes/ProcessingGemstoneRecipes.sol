import "../../Interfaces/GameObjects/ICrafting/ICraftingMaterials.sol";
pragma solidity ^0.8.0;


contract ProcessingGemstoneRecipes {

    function recipe (ICraftingMaterials.CraftingMaterial material, uint amount) external view returns(ICraftingMaterials.ProcessingRecipe memory _recipe){
        if(material == ICraftingMaterials.CraftingMaterial.POLISHED_AMBER) {
            return POLISHED_AMBER(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_PEARL) {
            return POLISHED_PEARL(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_AMETHYST) {
            return POLISHED_AMETHYST(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_CORAL) {
            return POLISHED_CORAL(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_RUBY) {
            return POLISHED_RUBY(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_TOPAZ) {
            return POLISHED_TOPAZ(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_AZURITE) {
            return POLISHED_AZURITE(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_EMERALD) {
            return POLISHED_EMERALD(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_SAPPHIRE) {
            return POLISHED_SAPPHIRE(amount);
        } else if (material == ICraftingMaterials.CraftingMaterial.POLISHED_DIAMOND) {
            return POLISHED_DIAMOND(amount);
        } else {
            revert("invalid");
        }

        revert("?");
    }

    function POLISHED_AMBER (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.AMBER;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 15 minutes;
    }

    function POLISHED_PEARL (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.PEARL;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 20 minutes;
    }

    function POLISHED_AMETHYST (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.AMETHYST;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 25 minutes;
    }

    function POLISHED_CORAL (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.CORAL;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 30 minutes;
    }

    function POLISHED_RUBY (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.RUBY;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 35 minutes;
    }

    function POLISHED_TOPAZ (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.TOPAZ;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 40 minutes;
    }

    function POLISHED_AZURITE (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.AZURITE;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 45 minutes;
    }

    function POLISHED_EMERALD (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.EMERALD;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 50 minutes;
    }

    function POLISHED_SAPPHIRE (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.SAPPHIRE;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 55 minutes;
    }

    function POLISHED_DIAMOND (uint amount) public view returns(ICraftingMaterials.ProcessingRecipe memory _recipe) {
        _recipe.requiredMaterial = ICraftingMaterials.CraftingMaterial.DIAMOND;
        _recipe.amount = amount * 10;
        _recipe.requiredTime = amount * 1 hours;
    }
}
