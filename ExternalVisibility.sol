    contract ExternalContract {
    function someExternalFunction() external view returns (uint8) {
        return 0;
      }
    }

    /**
    Below line of code will work fine.
    */

    contract OtherContract {
      function myFunc() public view returns (uint8) {
        ExternalContract c = new ExternalContract();
        c.someExternalFunction();
      }
    }

    /**
     Below lines of code won't work, one external function can't be called
     from other external function in same contract
    */

    contract OtherContract {
    function myFunc() external view returns (uint8) {
    }

    function myOtherFunc() external view returns (uint8) {
    myFunc(); // Nope, doesn't work!
    }
    }