const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");



module.exports = buildModule("studentdbModule", (m) => {
  const students=m.contract("student_info")

  
  return { students };
});
