// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/Upfi.sol";

contract UpfiTest is UpfiToken {

    function testTokenInitialValues() public {
        Assert.equal(name(), "Upfi", "token name did not match");
        Assert.equal(symbol(), "UPFI", "token symbol did not match");
        Assert.equal(decimals(), 18, "token decimals did not match");
        Assert.equal(totalSupply(), 1000000000, "token supply should be 1 billion");
    }
}