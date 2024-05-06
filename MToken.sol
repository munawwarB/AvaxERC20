contract MToken is ERC20{
    address public owner;
    constructor(string memory _name, string memory _symbol, uint8 _decimals)ERC20(_name,_symbol,_decimals){
        owner = msg.sender;
    }

    function mint(address _to,uint256 _amount) public {
         require(msg.sender == owner,"You are not the Owner");
          _mint(_to, _amount);
    }
}
