const DeepBlueSeaToken = artifacts.require("DeepBlueSeaToken"); 

module.exports = function(deployer) {
    deployer.deploy(DeepBlueSeaToken,"Deep Blue Sea Token","DBS",18,250000000);
};