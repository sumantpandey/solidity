/*internal is the default visibility for state variables.
Internal functions and state variables can both be accessed from within the same contract 
and in deriving contracts. They aren't accessible from the outside.
*/
contract InternalVisibility{

    uint256 internal myVar;
    constructor(){
        myVar = 10;
    }
    function myFunc() public view returns (uint256) {
        uint256 myVarCopy = myVar; 
    }
    function getMyVar() internal view returns(uint){
       return myVar;
    }

    function call() public view returns(uint){
        return getMyVar();
    }
}
    /**
     below code is also fine, internal variable and methods can
     be used in derived contract
    */
    contract DerivedContract is InternalVisibility {
    function myFunc() public view returns (uint256) {
        uint256 myVarCopy = myVar;
       }
    }

    /**
     below code is not fine, internal variable and methods can
     not be used in other contract
    */
    contract OtherContract {
      function myFunc() public view returns (uint256) {
       InternalVisibility c = new InternalVisibility();
       // Nope this does not work. myVar is private to MyContract.
       c.myVar;
  }
}