import UIKit

var str = "Hello, playground"

class Record {
    
 var name : String = ""
 var time : String = ""
    var date : String = ""
    var appoitments: Int = 0
    
    func addAppointment(){
        appoitments += 1
    }
    
}

let doctor1 = Record()
doctor1.name = "Ama Methminni"
doctor1.time = "11.30 P.M"
doctor1.date = "01/12/2019"
doctor1.addAppointment()
print(doctor1.appoitments)
print(doctor1.name)

class PatientRecord : Record {
    
    override func addAppointment() {
        super.addAppointment()
        print("Appointment Made")
    }
    
    func cost(_ fee:Double, _ hospitalCharge:Double) -> Double{
        
        let total = fee + hospitalCharge
        return total
    }
}

let p1 = PatientRecord()
p1.name = "Pasindu Senarathne"
let cost = p1.cost(200.50, 100)
print(cost)
p1.addAppointment()
print(p1.appoitments)
