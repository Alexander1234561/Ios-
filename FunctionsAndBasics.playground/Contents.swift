//Домашнее задание

//Задание 2

//Да можно, пример из задания 5
//func equelMass(firstMass: [Int], secondMass: [Int]) -> Bool {
//
//    func sum(_ mass : [Int]) -> Int{
//        var sum: Int = 0
//        for i in mass{
//            sum += i
//        }
//        return sum
//    }
//    return sum(firstMass) > sum(secondMass) ? true : false
//}

// Задание 3

func stringResult(forString massOfString: String...) -> String {
    var result: String = ""
    for (index,str) in massOfString.enumerated() {
        result += index != massOfString.count - 1 ? ("\(str),") : str
    }
    return result
}

var res = stringResult(forString: "a","b","c")

//Задание 4

func doubleSwap(_ firstEl: inout Int,_ secondEl: inout Int) -> Void{
    let buf = firstEl
    firstEl = 2 * secondEl
    secondEl = 2 * buf
}

var a:Int = 5, b: Int = 10
doubleSwap(&a, &b)

//Задание 5

func equelMass(firstMass: [Int], secondMass: [Int]) -> Bool {
    
    func sum(_ mass : [Int]) -> Int{
        var sum: Int = 0
        for i in mass{
            sum += i
        }
        return sum
    }
    return sum(firstMass) > sum(secondMass) ? true : false
}

var mass: Array<Int> = [1,2,3,4]
var massOther: Array<Int> = [2,3,4]

equelMass(firstMass: mass, secondMass: massOther)

//Задание 6

func reverse(mass: inout [Int]) {
    mass = mass.sorted(by: >)
}

var massNew:Array<Int> = [1,2,3,4,5,6,3]
reverse(mass: &massNew)
massNew

//Задание 7

func sum(_ mass : [Int]) -> Int{
    var sum: Int = 0
    for i in mass{
        sum += i
    }
    return sum
}

func middleNum(mass: [Int]) -> Double{
    let s = Double(sum(mass))
    return s/Double(mass.count)
}

var anotherMass: Array<Int> = [2,3,4,5,6,8,9]
var mn = middleNum(mass: anotherMass)

//Задание 8

func massSearchIndex(mass: [String], searchStr: String) -> Int?{
    var result: Int?
    
    for (index,i) in mass.enumerated(){
        if i == searchStr {
            result = index
            break
            
        }
    }
    return result
}

var strMass: Array<String> = ["Hello", "Goodbye", "Thenk You", "Good", "Excellent", "Amazing"]
var flag: Int? = massSearchIndex(mass: strMass, searchStr: "Goodi")

//Задание 9

//"Hello, young man/woman 0"

//Задание 10

//4

//Бонусные задания

//Функции
//1) В функции можно вернуть tuple

func randFunction(a: Int, b: Int, c: Int) -> (aMulb: Int, aMulc: Int, bMulc: Int) {
    return (a*b, b*c, b*c)
}
var tup = randFunction(a: 3, b: 2, c: 1)

//2) Можно внутри написать другую функцию, в них можно обращаться к переменным родительских функций
//Пример в задании 5

//Опционалы
//Лучше его не использовать, ну а так можно, тогда, когда мы уверены что он не nil
//Примеры:

var number: Int! = Int("5")

var numberOther: Int?
numberOther = 3
var result = numberOther! + 2

// В другом случае лучше использовать опциональное связывание
