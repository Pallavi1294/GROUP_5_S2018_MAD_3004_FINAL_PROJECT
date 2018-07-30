//
//  main.swift
//  PayRollSystem
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
import Cocoa

var car = Car(make: "CAR_MAKE", plate: "CAR_PATE", numberOfSeats: 4)
var bike = Motorcycle(make: "MOTORCYCLE_MAKE", plate: "MOTORCYCLE_PLATE", getKerbWeight: 300)

var employeelist : [Employee] = []



var total:Double? = 0
var rpt:Character = "y"


repeat
{
    print(" Enter 1 to insert employee details \n Enter 2 to print all Employee's data \n Enter 3 to print individual employee's data \n Enter 4 to get total PAyrOLL \n Enter 5 to exit \n\n\n")
    var choice:Int = Int(readLine()!)!

switch(choice)
{
    
case 1:
    print(" -----What type of employee you want to add----- \n 1. CommissionBasedPartTime \n 2. Intern \n 3. FixedBasedPartTime \n 4. FullTime")
    var select:Int = Int(readLine()!)!
    if select == 1
    {
        var eDetails=CommisionBasedPartTime()
        print("Enter employee ID :-")
        eDetails.employeeId = Int(readLine()!)!
        print("Enter employee NAME :-")
        eDetails.employeeName = readLine()
        print("Enter Employee AGE :-")
        eDetails.age = Int(readLine()!)!
        print("Enter number of hours employee worked :-")
        eDetails.numberOfHoursWorked = Int(readLine()!)!
        print("Enter pay rate per hour :-")
        eDetails.rate = Int(readLine()!)!
        print("Enter commission percentage :-")
        eDetails.commisionPercentage = Double(readLine()!)!
        eDetails.total()
        
        print("-----Press 1 if employee has a vehicle or press 0 if no vehicle-----")
        var hasVehicle:Int = Int(readLine()!)!
        if hasVehicle == 1
        {
            print("-----enter C if employee has a car or enter M if Employee has a Motorcycle-----")
            var whichVehicle:Character = Character(readLine()!)
            if whichVehicle == "c"
            {
                eDetails.vehicle = car
                print("make is")
                car.make = readLine()!
                print(" plate is")
                car.plate = readLine()!
                print("number of seats")
                car.numberOfSeats = Int(readLine()!)!
                eDetails.printMyData()
        
            }
            else if whichVehicle == "m"
            {
                eDetails.vehicle = bike
                print("make is")
                bike.make = readLine()!
                print(" plate is")
                bike.plate = readLine()!
                print("Kerb Weight is")
               bike.getKerbWeight = Int(readLine()!)!
                eDetails.printMyData()
            }
        }
        else{
            eDetails.vehicle = nil
        }

        employeelist = employeelist + [eDetails]
        total = total! + eDetails.Earnings!
        print("Do you want to repeat (y/n)")
        rpt = Character(readLine()!)
        if rpt == "y"
        {
            print("\n\n\n\n\n\n\n")
        }
    }
    
        
        
        
        
    else if select == 2
    {
        var eDetails=Intern()
        print("Enter employee ID :-")
        eDetails.employeeId = Int(readLine()!)!
        print("Enter employee NAME :-")
        eDetails.employeeName = readLine()
        print("Enter Employee AGE :-")
        eDetails.age = Int(readLine()!)
        print("Enter SCHOOL NAME")
        eDetails.internSchoolName = readLine()
        
       
        print("-----Press 1 if employee has a vehicle or press 0 if no vehicle-----")
        var hasVehicle:Int = Int(readLine()!)!
        if hasVehicle == 1
        {
            print("-----enter C if employee has a car or enter M if Employee has a Motorcycle-----")
            var whichVehicle:Character = Character(readLine()!)
            if whichVehicle == "c"
            {
                eDetails.vehicle = car
                print("make is")
                car.make = readLine()!
                print(" plate is")
                car.plate = readLine()!
                print("number of seats")
                car.numberOfSeats = Int(readLine()!)!
               
            }
            else
            {
                eDetails.vehicle = bike
                print("make is")
                bike.make = readLine()!
                print(" plate is")
                bike.plate = readLine()!
                print("Kerb Weight is")
                bike.getKerbWeight = Int(readLine()!)!
                eDetails.printMyData()
            }
        }
        else{
            eDetails.vehicle = nil
        }
        print("Do you want to repeat (y/n)")
        rpt = Character(readLine()!)
        if rpt == "y"
        {
            print("\n\n\n\n\n\n\n")
        }
        employeelist = employeelist + [eDetails]
    }
        
        
        
        
        
    else if select == 3{
        var eDetails=FixedBasePartTime()
        print("Enter employee ID :-")
        eDetails.employeeId = Int(readLine()!)!
        print("Enter employee NAME :-")
        eDetails.employeeName = readLine()
        print("Enter Employee AGE :-")
        eDetails.age = Int(readLine()!)!
        print("Enter fixed AMOUNT :-")
        eDetails.fixedAmount = Int(readLine()!)!
        print("Enter number of hours employee worked :-")
        eDetails.numberOfHoursWorked = Int(readLine()!)!
        print("Enter RATE :-")
        eDetails.rate = Int(readLine()!)!
        //eDetails.printMyData()
        print("-----Press 1 if employee has a vehicle or press 0 if no vehicle-----")
        var hasVehicle:Int = Int(readLine()!)!
        if hasVehicle == 1
        {
            print("-----enter C if employee has a car or enter M if Employee has a Motorcycle-----")
            var whichVehicle:Character = Character(readLine()!)
            
            if whichVehicle == "c"
            {
                eDetails.vehicle = car
                print("make is")
                car.make = readLine()!
                print(" plate is")
                car.plate = readLine()!
                print("number of seats")
                car.numberOfSeats = Int(readLine()!)!
                eDetails.printMyData()
            }
            else
            {
                eDetails.vehicle = bike
                print("make is")
                bike.make = readLine()!
                print(" plate is")
                bike.plate = readLine()!
                print("Kerb Weight is")
                bike.getKerbWeight = Int(readLine()!)!
                eDetails.printMyData()
            }
        }
        else{
            eDetails.vehicle = nil
        }
        total = total! + eDetails.Earnings!
        print("Do you want to repeat (y/n)")
        rpt = Character(readLine()!)
        if rpt == "y"
        {
            print("\n\n\n\n\n\n\n")
        }
        employeelist = employeelist + [eDetails]
    }
    else if select == 4
    {
        var eDetails=FullTimeEmployee()
        print("Enter employee ID :-")
        eDetails.employeeId = Int(readLine()!)!
        print("Enter employee NAME :-")
        eDetails.employeeName = readLine()
        print("Enter Employee AGE :-")
        eDetails.age = Int(readLine()!)
        print("Enter Salary")
        eDetails.salary = Double(readLine()!)!
        print("Enter Bonus")
        eDetails.bonus = Double(readLine()!)!
        
        //eDetails.printMyData()
        print("-----Press 1 if employee has a vehicle or press 0 if no vehicle-----")
        var hasVehicle:Int = Int(readLine()!)!
        if hasVehicle == 1
        {
            print("-----enter C if employee has a car or enter M if Employee has a Motorcycle-----")
            var whichVehicle:Character = Character(readLine()!)
            if whichVehicle == "c"
            
            {
                eDetails.vehicle = car
                print("make is")
                car.make = readLine()!
                print(" plate is")
                car.plate = readLine()!
                print("number of seats")
                car.numberOfSeats = Int(readLine()!)!
                eDetails.printMyData()
            }
                
            else
            {
                eDetails.vehicle = bike
                print("make is")
                bike.make = readLine()!
                print(" plate is")
                bike.plate = readLine()!
                print("Kerb Weight is")
                bike.getKerbWeight = Int(readLine()!)!
                eDetails.printMyData()
            }
        }
        else{
            eDetails.vehicle = nil
        }
        print("Do you want to repeat (y/n)")
        rpt = Character(readLine()!)
        if rpt == "y"
        {
            print("\n\n\n\n\n\n\n")
        }
        employeelist = employeelist + [eDetails]
    }
    else{
        print("Invalid Input please try again")
    }
break
    
    
case 2:
    print("\n\n-----ALL employee details-----")
    var all:Int = 0
    while all < employeelist.count
    {
        print(employeelist[all].printMyData())
        all += 1
    }
    print("\n============================================\n")
    print("Do you want to repeat (y/n)")
    rpt = Character(readLine()!)
    if rpt == "y"
    {
        print("\n\n\n\n\n\n\n")
    }
break
    
case 3:
    print("\n\n-----Enter employee id to Find details :-")
    var eID:Int = Int(readLine()!)!
    var num:Int = 0
    while num < employeelist.count{
        if employeelist[num].employeeId == eID
        {
            employeelist[num].printMyData()
            break
        }
        num += 1
    }
    
    print("Do you want to repeat (y/n)")
    rpt = Character(readLine()!)
    if rpt == "y"
    {
        print("\n\n\n\n\n\n\n")
    }
break
case 4:
    print("\n\nTotal payroll is \(total!)\n")
    print("Do you want to repeat (y/n)")
    rpt = Character(readLine()!)
    if rpt == "y"
    {
        print("\n\n\n\n\n\n\n")
    }
break
    
    
default:
    print("No data found")
}
}
    while (rpt != "n")
