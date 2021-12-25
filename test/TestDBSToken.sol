// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/DeepBlueSeaToken.sol";

contract TestDBSToken {
    function testInitialBalanceUsingDeployedContract() public {
        DeepBlueSeaToken meta = DeepBlueSeaToken(DeployedAddresses.DeepBlueSeaToken());

        uint expected = 250000000 * (10**uint256(18));

        Assert.equal(
            meta.balanceOf(msg.sender),
            expected,
            "Owner should have correctly DeepBlueSeaToken initially"
        );
    }

    function testInitialBalanceWithNewDeepBlueSeaToken() public {
        DeepBlueSeaToken meta = new DeepBlueSeaToken("Deep Blue Sea Token","DBEA",18,250000000);

        uint expected = 250000000 * (10**uint256(18));

        Assert.equal(
            meta.balanceOf(address(this)),
            expected,
            "Owner should have correctly DeepBlueSeaToken initially"
        );
    }
}