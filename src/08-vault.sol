pragma solidity ^0.8;

interface IVault {
    function locked() external view returns (bool);
    function unlock(bytes32 password) external;
}
