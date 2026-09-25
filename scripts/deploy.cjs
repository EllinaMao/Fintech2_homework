const { ethers } = require("hardhat");

const deploy = async () => {
    const factory = await ethers.getContractFactory("Counter");
    const contract = await factory.deploy();

    await contract.waitForDeployment();
    console.log(`Counter deployed to: ${ await contract.getAddress()}`);
};

deploy().catch((error) => {
    console.error(error);
    process.exitCode = -1;
});

