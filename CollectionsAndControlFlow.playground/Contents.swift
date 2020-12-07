//Домашняя работа
// 2 задание

//var mass: Array<Int> = []
//var mass:[Int] = []
//var mass = [1,2]
//var mass = Array<Int> ()
//var mass = [Int] ()
//var mass = Array(repeating: 1, count: 3)

// 3 задание

var massOfIntNumbers: Array<Int> = [1,2,3]
massOfIntNumbers.append(4)
massOfIntNumbers.remove(at: 0)
var max: Int = massOfIntNumbers[0]
var min: Int = massOfIntNumbers[0]

for number in massOfIntNumbers{
    if number > max { max = number }
    if number < min { min = number }
}

print(max - min)

// 4 задание

var mass: Array<Int> = []

mass.append(3)
mass.insert(2, at: 1)
mass += [1,4]

// 5 задание

//11

// 6 задание

var massOfNames: Array<String> = ["Olga", "Elena", "Misha","Alexander"]
var greeting: String = ""

for (numOfName, name) in massOfNames.enumerated(){
    greeting += numOfName % 2 == 1 ? "Go left \(name)" : "Go right \(name)"
}
greeting

// 7 задание

//Массив - упорядоченный список, хранящий много значений (возможно одинаковых) одного типа
//Множество - неупорядоченная коллекция, хранящая много значений (неодинаковых) одного типа

// 8 задание

//8.1
//["😂", "🎊"]
//8.2
//["🕺","🚀", "🎸","🦋"]
//8.3
//["😂", "🎊", "🕺", "🚀","🎸","🦋"]
//8.4
//["🕺","🚀"]

// 9 задание

//Set
//Например для хранения стран
var countries: Set<String> = ["Australia", "New Zeland"]
//Array
//Для хранения весов в машинном обучении
var massOfWeight: Array<Double> = [2.3,2.4]
//Dict
//Для хранения прибыли в определенный месяц
//var moneyControl: Dictionary<String,Int> = ["January": 100000, "May": 200000]
var moneyControl: [String:Int] = ["January": 100000, "May": 200000]


// 10 задание

let number: Int = 5
let power: Int = 3
var result: Int = 1

for _ in 0..<power{
    result *= number
}

result

// 11 задание

let mood: Int = 7

if mood <= 3{
    print("Bad mood")
} else if mood <= 7 {
    print("Good mood")
} else {
    print("Excellent mood")
}

switch mood {
case 0..<4: print("Bad mood")
case 4..<8: print("Good mood")
default: print("Excellent mood")
}

// Бонусные задание

//Коллекции
//["🏆", "💃", "💃🎰"]

//Условия
//Good emoji

//Циклы
//24

//Оператор switch
//if удобнее использовать, если усовная конструкция не слишком большая.
//switch удобнее использовать для больших условных конструкций, также используют для создания меню.

