
contract CalleeArray{

    uint[] public numbers;

    function init(uint[] memory num) external{
        for(uint i=0; i<num.length;i++){
            numbers.push(num[i]);
        }
    }
    function getNum() public view returns(uint[] memory){
        return numbers;
    }
}

