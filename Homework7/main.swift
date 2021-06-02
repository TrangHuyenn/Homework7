//
//  main.swift
//  Homework7
//
//  Created by Trang Huyền on 6/2/21.
//

import Foundation

//MARK: BAI 1

struct SoHoc {
    let number1: Float
    let number2: Float
    
    init(_ number1: Float,_ number2: Float) {
        self.number1 = number1
        self.number2 = number2
    }
    
    func printInfo()  {
        print("----------------")
        print("Number1: \(number1)")
        print("Number2: \(number2)")
    }
    func addition() -> Float {
        return number1 + number2
    }
    func subtract() -> Float {
        return number1 - number2
    }
    func multi() -> Float {
        return number1 * number2
    }
    func division() -> Float {
        return number1 / number2
    }
}

let sohoc = SoHoc(3.0, 1.0)
print(sohoc.printInfo())
print(sohoc.addition())
print(sohoc.division())
// MARK: BAI 2
class NhanVien {
    let name: String
    let age: Int
    let address: String
    let salary: Double
    let timeOfWork: Int
    
    init(_ name: String,_ age: Int,_ address: String,_ salary: Double, _ timeOfWork: Int) {
        self.name = name
        self.age = age
        self.address = address
        self.salary = salary
        self.timeOfWork = timeOfWork
    }
    
    func printInfo()  {
        print("""
              -------Information----------
              Name: \(name)
              Age: \(age)
              Address: \(address)
              Salary: \(salary)
              Time of work: \(timeOfWork)
""")
        
    }
    func tinhThuong() {
        if timeOfWork >= 200 {
            print("Tien thuong cua \(name) la: \(salary*0.2)")
        }
        else if timeOfWork >= 100 {
            print("Tien thuong cua \(name) la: \(salary*0.1)")
        }
        else {
            print("Tien thuong cua \(name) la: 0")
        }
    }
    
}

let nhanvien1 = NhanVien("Jason", 23, "Ha noi", 230000.0, 100)
print(nhanvien1.printInfo())
print(nhanvien1.tinhThuong())

//MARK: Bai 3

struct Triangle {
    var a: Float
    var b: Float
    var c: Float
    
    init(_ a: Float,_ b: Float,_ c: Float) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func checkTriangle() {
        if a+b>c && b+c>a && c+a>b {
            if a==b || a==c || b == c {
                print("\(a), \(b), \(c) tao thanh tam giac can")
            }
            else if a==b && b==c {
                print("\(a), \(b), \(c) tao thanh tam giac deu")
            }
            else if a*a+b*b == c*c || a*a+c*c == b*b ||  c*c+b*b == a*a {
                print("\(a), \(b), \(c) tao thanh tam giac vuong")
            }else {
                print("\(a), \(b), \(c) tao thanh tam giac thuong")
            }
        }
        else {
            print("\(a), \(b), \(c) ko tao thanh tam giac")
        }
    }
    
    func perimeter()  {
        if a+b>c && b+c>a && c+a>b {
            print("Chu vi tam gia la: \((a + b + c))")
        }
        else {
            print("\(a), \(b), \(c) ko tao thanh tam giac")
        }
    }
    
    func area() {
        if a+b>c && b+c>a && c+a>b {
            let p : Float = (a + b + c)/2
            let s = sqrt(p * (p-a)*(p-b)*(p-c))
            print("Dien tich tam gia la: \(s)")        }
        else {
            print("\(a), \(b), \(c) ko tao thanh tam giac")
        }
        
        
    }
}

let triagle = Triangle(3, 4, 5)
print(triagle.perimeter())
print(triagle.area())


