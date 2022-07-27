contract ArrayOperation{

    uint[] array;
    function add() public {
        array.push(1);
        array.push(2);
    }
    
    function get() public view returns(uint[] memory)
    {
        return array;
    }
    
    function deleteArr() public{
      uint temp = array.length;
      for(uint i=0 ; i<temp; i++){
             array.pop();
        }
    }
}