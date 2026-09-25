const { ethers } = require("hardhat");

const deploy = async () => {
    const factory = await ethers.getContractFactory("ProductManager");
    const contract = await factory.deploy();

    await contract.waitForDeployment();
    console.log(`ProductManager deployed to: ${ await contract.getAddress()}`);
};

deploy().catch((error) => {
    console.error(error);
    process.exitCode = -1;
});

