// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

//Solidity contract that uses a library for a specific functionality. Implement the library and demonstrate its usage within the contract.

library Math{
    function sumOfN(uint num) public pure returns(uint){
        if(num == 1)
            return 1;
        else 
            return num + sumOfN(num - 1);
    }

    function factorialOfN(uint num) public pure returns(uint){
        if(num == 1)
            return 1;
        else 
            return num * factorialOfN(num - 1);
    }
}

contract secondAss{
    function summation(uint num) public pure returns(uint){
        return Math.sumOfN(num);
    }

    function factorial(uint num) public pure returns(uint){
        return Math.factorialOfN(num);
    }
}