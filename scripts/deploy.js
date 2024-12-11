async function main() {
    const [deployer] = await ethers.getSigners();
  
    console.log("Deploying contracts with the account:", deployer.address);
  
    const Lottery = await ethers.getContractFactory("Lottery");
    const lottery = await Lottery.deploy();
  
    console.log("Lottery contract deployed to:", lottery.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });
  