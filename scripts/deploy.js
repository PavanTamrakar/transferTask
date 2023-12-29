const hre = require("hardhat");

async function main() {

  const transferTask = await hre.ethers.getContractFactory("transferTask");
  const TransferTask = await transferTask.deploy();

  await TransferTask.deployed();

  console.log("transferTask deployed to:", TransferTask.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });