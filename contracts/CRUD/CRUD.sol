pragma solidity ^0.5.0;

contract CRUD{
    struct User{
        uint id;
        string name;
    }
    User[] public users;
    uint public nextId=1;

    function create(string memory name) public{
        users.push(User(nextId,name));
        nextId++;
    }

    function read(uint id) view public returns(uint, string memory){
        return(users[find(id)].id, users[find(id)].name);

    }

    function update(uint id ,string memory name)public{
        users[find(id)].name= name;
    }

    function destroy(uint id)public{
        delete users[id];
    }
    
    function find(uint id) view internal returns(uint){
        for(uint i=0; i<users.length; i++){
            if(users[i].id==id){
                return i;
            }
        }
        revert("User does not exist");
    }

}