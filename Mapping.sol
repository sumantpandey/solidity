contract Mapping {
      
    struct Student 
    {
        string name;
        string subject;
        uint8 marks;
    }
    Student student; 
    mapping (address => Student) result;
    address[] public students;  

    function adding_values() public{
       student = Student("Sumant","Chemistry", 80);
        result[msg.sender] = student;
        students.push(0xDEE7796E89C82C36BAdd1375076f39D69FafE252);
  
    }  

    function get_student_result() view public returns (address[] memory) {
        return students;
    }
}