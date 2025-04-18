import {ethers, upgrades} from "hardhat";
import fs from "fs";
import {CONTRACTS, DeployedFileLocations} from "./helpers/constants";

const deployment_mode = process.env?.DEPLOYMENT_MODE || "dev-local"

async function main() {

    const deployedNavigator = JSON.parse(fs.readFileSync(DeployedFileLocations.navigator, 'utf-8'))
    const Navigator = await ethers.getContractFactory("Navigator");
    const navigator = Navigator.attach(deployedNavigator.navigator)
    let tx

    let CodexElixirRecipes = await ethers.getContractFactory("CodexElixirRecipes")
    let codexElixirRecipes = await upgrades.deployProxy(CodexElixirRecipes);

    await codexElixirRecipes.deployed()
    console.log("codexElixirRecipes deployed to:", codexElixirRecipes.address,)
    tx = await navigator.setGameContractsById(CONTRACTS.ELIXIR_RECIPES, codexElixirRecipes.address, true)
    await tx.wait(1)
    console.log("and set in navigator.")

    let CodexElixirs = await ethers.getContractFactory("CodexElixirs")
    let codexElixirs = await upgrades.deployProxy(CodexElixirs);

    await codexElixirs.deployed()
    console.log("codexElixirs deployed to:", codexElixirs.address,)
    tx = await navigator.setGameContractsById(CONTRACTS.ELIXIRS_CODEX, codexElixirs.address, true)
    await tx.wait(1)
    console.log("and set in navigator.")

    let Elixirs = await ethers.getContractFactory("Elixirs")
    let elixirs = await upgrades.deployProxy(Elixirs, [navigator.address, "cryptoseals.art/s1/elixir/"], {
        initializer: "initialize"
    });

    await elixirs.deployed()
    console.log("elixirs deployed to:", elixirs.address,)
    tx = await navigator.setGameContractsById(CONTRACTS.ELIXIRS, elixirs.address, true)
    await tx.wait(1)
    console.log("and set in navigator.")

    fs.writeFileSync(DeployedFileLocations.elixirs,
        JSON.stringify({
            codexElixirRecipes: codexElixirRecipes.address,
            codexElixirs: codexElixirs.address,
            elixirs: elixirs.address,
        }), {});

    //fs.writeFileSync('./scripts/contracts.json', JSON.stringify(contracts))
}

main();