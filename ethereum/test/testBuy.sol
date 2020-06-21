pragma solidity >=0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/BuyItem.sol";

contract TestBuyItem {
 // The address of the contract to be tested
 BuyItem buyItem = BuyItem(DeployedAddresses.BuyItem());

 // The id of the product that will be used for testing
 uint expectedProductId = 8;

 //The expected owner of product is this contract
 address expectedBuyer = address(this);


    // Testing the adopt() function
    function testUserCanBuyItem() public {
    uint returnedId = buyItem.buy(expectedProductId);

    Assert.equal(returnedId, expectedProductId, "Id of the expected product should match what is returned.");
    }

    // Testing retrieval of a single pet's owner
    function testGetBuyerAddressByProductId() public {
        address mybuyer= buyItem.buyer(expectedProductId);
        Assert.equal(mybuyer, expectedBuyer, "Owner of the expected product should be this contract");
    }

    // Testing retrieval of all pet owners
    function testGetBuyerAddressByProductIdInArray() public {
    // Store buyerin memory rather than contract's storage
    address[16] memory buyer= buyItem.getbuyer();

    Assert.equal(buyer[expectedProductId], expectedBuyer, "Owner of the expected pet should be this contract");
    }
}