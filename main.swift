print("Astana IT University")
print("Offices at our university:")
print("1.  ====Audience====")
print("2.  ====Staff Room====")
print("3.  ====Teacher's Room====")
print()
print()

class Person{
    var id: Int
    var name: String
    var role: String
    private(set) var phoneNumber: String
    
    init(id: Int, name: String, role: String, phoneNumber: String){
        self.id = id
        self.name = name
        self.role = role
        self.phoneNumber = phoneNumber
    }
    
    func getInfo() -> String{
        return "Person's name is \(name), role: \(role), phone number: \(phoneNumber)"
    }
    
    func checkAudienceAccess() -> String{
        if self.role == "Student"{
            return "Student \(name) has access to Audience"
        }
        else if self.role == "Lecturer"{
            return "Lecturer \(name) has access to Audience"
        }
        else{
            return "Staff \(name) doesn't have access to Audience"
        }
    }
    
    func checkStaffRoomAccess() -> String{
        if self.role == "Lecturer"{
            return "Lecturer \(name) doesn't have access to Staff Room"
        }
        else if self.role == "Student"{
            return "Student \(name) doesn't have access to Staff Room"
        }
        else{
            return "Staff \(name) has access to Staff Room"
        }
    }
    func checkTeachersRoomAccess() -> String{
        if self.role == "Lecturer"{
            return "Lecturer \(name) has access to Teachers Room"
        }
        else if self.role == "Student"{
            return "Student \(name) doesn't have access to Teachers Room"
        }
        else{
            return "Staff \(name) doesn't have access to Teachers Room"
        }
    }
}

class Student: Person{
    var group: String
    
    init(id: Int, name: String, group: String, phoneNumber: String){
        self.group = group
        super.init(id: id, name: name, role: "Student", phoneNumber: phoneNumber)
    }
    
    override func getInfo() -> String{
        return "Student's name: \(name), group: \(group), phone number: \(phoneNumber)"
    }
    

}

class Lecturer: Person{
    var department: String
    
    init(id: Int, name: String, department: String, phoneNumber: String){
        self.department = department
        super.init(id: id, name: name, role: "Lecturer", phoneNumber: phoneNumber)
    }
    
    override func getInfo() -> String{
        return "Lecturer's name is \(name), department: \(department), phone number: \(phoneNumber)"
    }
}

class Staff: Person{
    var position: String
    
    init(id: Int, name: String, position: String, phoneNumber: String){
        self.position = position
        super.init(id: id, name: name, role: "Staff", phoneNumber: phoneNumber)
    }
    
    override func getInfo() -> String{
        return "Staff's name is \(name), position: \(position), phone number: \(phoneNumber)"
    }
}



var student: Student = Student(id: 1, name: "Aidyn", group: "SE-2427", phoneNumber: "87775067677")
var lecturer: Lecturer = Lecturer(id: 2, name: "Min Soo Han", department: "IT", phoneNumber: "87756552730")
var staff: Staff = Staff(id: 3, name: "Arman", position: "IT Support", phoneNumber: "87778194400")


print(student.getInfo())
print(student.checkAudienceAccess())
print(student.checkStaffRoomAccess())
print(student.checkTeachersRoomAccess())
print()
print(lecturer.getInfo())
print(lecturer.checkAudienceAccess())
print(lecturer.checkStaffRoomAccess())
print(lecturer.checkTeachersRoomAccess())
print()
print(staff.getInfo())
print(staff.checkAudienceAccess())
print(staff.checkStaffRoomAccess())
print(staff.checkTeachersRoomAccess())

