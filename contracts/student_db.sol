// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract student_info {
    struct student {
        uint Roll_no;
        uint Reg_no;
        string name;
        string DOB;
        uint age;
        uint phone_no;
    } 
    uint public studentcount;
    uint[] private  rollNumbers; // storing rollnumber in a saperate array
    
    mapping (uint => student) public studentDetails;
    
    function addStudent(uint _Roll_no, uint _Reg_no, string memory _name, string memory _DOB, uint _age, uint _phone_no) public {
        studentcount++;
        rollNumbers.push(_Roll_no); // pusing the roll number in array 
        studentDetails[_Roll_no] = student(_Roll_no, _Reg_no, _name, _DOB, _age, _phone_no);
    }
    
    function ByRollno(uint rollno) public view returns(student memory) {
        return studentDetails[rollno];
    }
    
    function AllStudentDetail() public view returns (student[] memory) {
        student[] memory allStudents = new student[](studentcount);
        for (uint i = 0; i < studentcount; i++) {
            allStudents[i] = studentDetails[rollNumbers[i]]; // retrive the data by roll number stored in array 
        }
        return allStudents;
    }
}
