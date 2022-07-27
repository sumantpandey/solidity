contract Tuple {
    function tuple() public view returns(uint, string memory) {
        return (1, "tuple");
    }

    function getFirst() public view returns(uint) {
        uint num;
        (num,) = tuple();
        return num;
    }

    function getSecond() public view returns(string memory) {
        string memory str;
        (,str) = tuple();
        return str;
    }
}