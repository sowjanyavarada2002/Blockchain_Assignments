// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

//Solidity contract that defines a struct and uses it to store and manipulate data. Include functions to add, update, and retrieve struct instances.

contract thirdAss{
    struct stuDetails{
        uint rollno;
        string name;
        uint marks;
    }

    mapping (uint => stuDetails) data;
    uint public index = 1;

    function addData(string memory _name,uint _marks) public{
        data[index] = stuDetails(index, _name, _marks);
        index = index + 1;
    }
     
    function getData(uint _id) public view returns(uint, string memory, uint){
        require(_id < index, "Rollno not exists");
        return (data[_id].rollno, data[_id].name, data[_id].marks);
    }

    function updateData(uint _id, string memory _name,uint _marks) public{
        require(_id < index, "Rollno not exists");
        data[_id] = stuDetails(_id, _name, _marks);
    }

}