# CRUD Smart Contract

This smart contract implements basic CRUD (Create, Read, Update, Delete) operations for managing user data.

## Features
- **Create**: Add a user with a unique ID and name.
- **Read**: Retrieve user details using their ID.
- **Update**: Modify the name of an existing user.
- **Delete**: Remove a user by their ID.

## How to Use
1. Compile and deploy the `CRUD.sol` contract in Remix IDE.
2. Use the following functions:
   - `create(string memory name)`: Adds a new user.
   - `read(uint id)`: Reads user details.
   - `update(uint id, string memory name)`: Updates user information.
   - `destroy(uint id)`: Deletes a user.
