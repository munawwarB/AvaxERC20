# MToken Contract

This contract implements a basic ERC20 token with additional functionality for minting and burning tokens. It consists of two contracts: `ERC20` and `MToken`.

## ERC20 Contract

The `ERC20` contract defines the standard ERC20 token interface and implements the basic token functionalities such as transfers, approvals, and allowances.

### Functions
- `totalSupply()`: Returns the total supply of tokens.
- `balanceOf(address account)`: Returns the balance of tokens for a specific account.
- `transfer(address recipient, uint256 amount)`: Transfers tokens from the sender's account to the recipient's account.
- `allowance(address owner, address spender)`: Returns the allowance of tokens that the spender is allowed to spend on behalf of the owner.
- `approve(address spender, uint256 amount)`: Approves a spender to spend a certain amount of tokens on behalf of the owner.
- `transferFrom(address sender, address recipient, uint256 amount)`: Transfers tokens from one account to another on behalf of the owner.

## MToken Contract

The `MToken` contract extends the functionality of the `ERC20` contract by adding the ability to mint tokens and designate an owner for the token contract.

### Additional Functions
- `mint(address _to, uint256 _amount)`: Mints a specified amount of tokens and assigns them to the designated address. Only the contract owner can call this function.

## Usage

1. Deploy the `MToken` contract by providing the desired name, symbol, and decimals for the token.
2. The deployer becomes the owner of the token contract and can mint tokens using the `mint` function.
3. Users can transfer tokens, approve spending, and allow others to spend tokens on their behalf using the standard ERC20 functions provided by the `ERC20` contract.

