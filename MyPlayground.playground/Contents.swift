import UIKit

var name = "Alya"
var birthdayYear = 2006
var age : Int
var currentYear = 2022
age = currentYear - birthdayYear

print("Hello my name is \(name) and my age is \(age)")

if age >= 14 && age <= 18
{
    print("نعم يمكنك المشاركة بكويت تبرمج")
}
else {
    print("لا يمكنك المشاركة بكويت تبرمج")
}

var num1 = "8"
var num2 = 4
var doubleNum : Double

doubleNum = (Double(num1) ?? 0) + Double(num2)
