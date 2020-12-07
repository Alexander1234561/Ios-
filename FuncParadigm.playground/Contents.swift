import Foundation

//2 Задание
//Функция без побочных эффектов, которая не зависит от каких либо глобальных переменных.
//Она должна при одном и том же входном наборе возращать одинаковые значения.
//3 Задание
var mass: Array<Int> = [1,2,3,4,5,6,21,32,12,12,1,2,0,3,42,12,31,1,2,3,44,5,666,31]
mass.sorted()
//4 Задание
let massStr = mass.map {"\($0)"}
massStr
//5 Задание
let names: Array<String> = ["Alex", "Andrey","Olga", "Gleb", "Natali", "Julia"]
let name = names.reduce(""){$0 + " \($1)"}
name
//6 Задание
func pauseForFunc(f: @escaping () -> Void){
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
        f()
    }
}
func hello() {
    print("hello")
}
pauseForFunc(f: hello)
//7 Задание
func twoInOne(f: @escaping () -> Void, g: @escaping () -> Void) -> () -> Void{
    return { f(); g() }
}

func a() { print("a") }
func b() { print("b") }

let ab = twoInOne(f: a, g: b)
ab()
//8 Задание

typealias sortF = (Int,Int) -> Bool

func s(_ el1: Int,_ el2: Int) -> Bool{
    return el1 < el2
}
func mySort(mass: [Int], f: sortF) -> [Int]{
    return mass.sorted(by: f)
}

var nmass = mySort(mass: mass, f: s)
//9 задание
// Операторы prefix-, postfix- объявляют, должен ли оператор быть до или после, соответственно, значением, на котором он действует.(Унарные)
//infix- объявляет двоичный оператор, который действует на два значения между ними(Бинарный).
