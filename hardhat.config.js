require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks:{
    hardhat:{},
    sepolia:{
      url:"https://sepolia.infura.io/v3/8f48ec80966a4682aeba096735830e9e",
      accounts:[process.env.PRIVATE_KEY]
    }
  }
};
