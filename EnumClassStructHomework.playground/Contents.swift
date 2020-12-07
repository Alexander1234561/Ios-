// 2 Заадание
enum Colour {
    case black
    case white
}

enum Figure {
    case king
    case queen
    case bishop
    case knight
    case pawn
    case rook
}

struct Piece {
    var colour: Colour
    var figure: Figure
}

//3 Задание

//Int, Float, String, Character

//4 Задание

//Круг мы можем однозначно задать при помощи центральной точки и радиуса
struct Position {
    var x: Double;
    var y: Double;
}

struct Size{
    var weight: Double;
    var height: Double;
}

class Circle{
    //центр точки
    var position: Position
    //Ширина и длина одинковы
    var size: Size
    
    init(xCenter: Double, yCenter: Double, radius: Double) {
        position = Position(x: xCenter, y:yCenter)
        size = Size(weight: radius, height: radius)
    }
}

class Rectangle{
    //Центр
    var position: Position
    //Ширина и длина одинковы
    var size: Size
    
    init(x1: Double, y1: Double, weight: Double, height: Double) {
        position = Position(x: x1, y: y1)
        size = Size(weight: weight, height: height)
    }
}
//5 Задание

/*
class ClassUser1{
    let name: String
    init(name: String) {
        self.name = name
    }
}

class ClassUser2{
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct StructUser1{
    let name: String
    init(name: String) {
        self.name = name
    }
}

struct StructUser2{
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Для классов - Если экземпляр класса является константой ссылкой let, тк он ссылочный тип, мы можем менять его свойства, только если не константы.
//Для структуры - Если Экземпляр структуры является константой let, то мы не можем менять его свойства, как если и свойства структуры будут константой(также не можем их изменять).

let user1 = ClassUser1(name: "Nikita")
2. user1.name = «Anton»(-)
// Выдаст ошибку, тк пытаемся изменить свойство name, константу(let)

let user2 = ClassUser2(name: "Nikita")
2. user2.name = «Anton»(+)
//Все супер, свойство name класса ClassUser2 является изменяемым(var)
 
let user3 = StructUser1(name: "Nikita")
3. user3.name = «Anton»(–)
 // Выдаст ошибку, тк user3 является константой(let) -> мы не можем менять свойство

let user4 = StructUser2(name: "Nikita")
4. user4.name = «Anton»(–)
// Выдаст ошибку, тк user4 является константой(let) -> мы не можем менять свойство
 
var user5 = ClassUser1(name: "Nikita")
5. user5.name = «Anton»(–)
// Выдаст ошибку, тк пытаемся изменить свойство name, константу(let)

var user6 = ClassUser2(name: "Nikita")
6. user6.name = «Anton»(+)
//Все супер, свойство name класса ClassUser2 является изменяемым(var)

var user7 = StructUser1(name: "Nikita")
7. user7.name = «Anton»(–)
 // Выдаст ошибку, тк мы не можем менять свойство - константу name(let)

var user8 = StructUser2(name: "Nikita")
8. user8.name = «Anton»(+)
 //Все супер
*/

//6 задание

//Не очень разбираюсь в машинах, накидал свойств для класса))

class Car {
    let carNumber: Int
    var carColor: String
    var mileage: Int
    let numOfDoors: Int
    let highSpeed: Int = 200
    
    init(carNumber: Int, carColor: String) {
        self.carNumber = carNumber
        self.carColor = carColor
        mileage = 0
        numOfDoors = 4
    }
    //Какие-то методы
}

//7 Задание

class Calculate {
    
    var x: Double
    var y: Double
    
    var sum: Double {
        return x + y
    }
    var sub: Double {
        return x - y
    }
    var mul: Double {
        return x * y
    }
    var dev: Double {
        return x / y
    }
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

var cal = Calculate(x: 2.1, y: 3.2)
cal.sub
cal.dev
cal.sum
cal.mul

//8 Задание

//static переменные следует использовать тогда, когда мы хотим создать переменную, отсносящуюся не к отдельному экземпляру а ко всему типу, тоесть, например мы можем использовать для подсчета созданных экземпляров.

//9 Задание

//Классы могут иметь наследников
//Структуры не могут иметь наследников
//Перечисления не могут иметь наследников

//10 Задание

struct Coordinates{
    var x: Int = 0
    var y: Int = 0
}

enum Direction{
    case north
    case south
    case west
    case east
}

func move( coordinates: Coordinates, direction: Direction) -> Coordinates  {
    
    switch direction{
    case .north: return Coordinates(x :coordinates.x, y :coordinates.y + 1)
    case .south: return Coordinates(x :coordinates.x, y :coordinates.y - 1)
    case .east: return Coordinates(x :coordinates.x + 1, y :coordinates.y)
    case .west: return Coordinates(x :coordinates.x - 1, y :coordinates.y)
    }
}

var res = move(coordinates: Coordinates(x: 0, y: 0), direction: Direction.north)

//Дополнительные задания

//Enums

//Мы можем хранить связанные значения
enum x{
    case a(b:Int, c:String)
    indirect case d(e: Double, z: x)
}

//Class


//Удобнее структурировать если свойства и методы связаны друг с другом
//Для удобства выявлять базовые классы

//Struct
//Будем использовать классы для контроля идентичности(с помощью оператора === мы можем иденифицировать ссылку)
//Также будем использовать классы для хранения сложных моделей, тк есть наследование.
//Также если нужен деинициализатор - классы предпочтительнее
//Структуры передаются по значению(копированием), именно для этого мы их и будем использовать(скорее чаще)
