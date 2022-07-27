import "./CalleeArray.sol";

contract CallerArray {
    uint[] temp;
    address calleeArrayAddr;

    function setCounterAddr(address _addr) public payable {
       calleeArrayAddr = _addr;
    }
    function call() public returns (uint) {
        
        temp.push(10);
        temp.push(20);

        CalleeArray arr = new CalleeArray();
        //CalleeArray can be initialized using below line code as well.
        //CalleeArray(calleeArrayAddr);
        arr.init(temp);
    }
    function get() public view returns(uint){
        return temp[1];
    }
}