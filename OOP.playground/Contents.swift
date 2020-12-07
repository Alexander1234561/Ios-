// 3 Задание

//1) В игре есть сундук с инвентарём. Инвентарь — различные игровые объекты, например: растения, оружие, квестовые предметы.

//Базовый класс
protocol Storable{
    func pickUp() -> String
    func drop() -> String
}
class Inventory {
    //Содержимое класса
}

extension Inventory: Storable{
    func pickUp() -> String {
        return "Picked Up"
    }
    func drop() -> String {
        return "Droped"
    }
}


//2)В игре показывается карта: с игроками, монстрами (ими управляет компьютер), интерактивными предметами и неподвижными элементами (например, деревья, стены).

protocol Movable {
    func move() -> String
}

protocol Drawable {
    func draw() -> String
}


class Player {
    //Содержимое класса Player
}

extension Player: Movable{
    func move() -> String{
        return "Moved Player"
    }
}
extension Player: Drawable{
    func draw() -> String{
        return "Drawn Player"
    }
}

class Monster {
    //Содержимое класса Player
}

extension Monster: Movable{
    func move() -> String {
         return "Moved Monster"
    }
}
extension Monster: Drawable{
    func draw() -> String{
        return "Drawn Monster"
    }
}

class Tree {
    //Содержимое класса Tree
}

extension Tree: Drawable{
    func draw() -> String {
        return "Drawn Tree"
    }
}

class Map {
    func mapMoved(obj: Movable) -> String{
        return obj.move()
    }
    
    func mapDrawn(obj: Drawable) -> String{
        return obj.draw()
    }
    
}

var player = Player()
var tree = Tree()
var monter = Monster()

var map = Map()
map.mapMoved(obj: player)
map.mapDrawn(obj: player)
map.mapDrawn(obj: tree)
map.mapDrawn(obj: monter)

//3)В приложении есть три модели машин, у каждой из которых есть три комплектации. Модели отличаются названием, картинкой. Комплектации — названием, ценой, цветом, объёмом двигателя.
struct Complect{
    //Задаваемые параметры
}

protocol Complectation{
    func complectationFirst() -> Complect
    func complectationSecond() -> Complect
    func complectationThird() -> Complect
}

class Car{
    //Все поля и функции машин
}



class CarA: Car, Complectation{
    func complectationFirst() -> Complect{
        return Complect()//Нужные нам параметры
    }
    
    func complectationSecond() -> Complect{
        return Complect()//Нужные нам параметры
    }
    
    func complectationThird() -> Complect{
        return Complect()//Нужные нам параметры
    }
}

class CarB: Car, Complectation{
    func complectationFirst() -> Complect{
        return Complect()//Нужные нам параметры
    }
    
    func complectationSecond() -> Complect{
        return Complect()//Нужные нам параметры
    }
    
    func complectationThird() -> Complect{
        return Complect()//Нужные нам параметры
    }
}

class CarC: Car, Complectation{
    func complectationFirst() -> Complect{
        return Complect()//Нужные нам параметры
    }
    
    func complectationSecond() -> Complect{
        return Complect()//Нужные нам параметры
    }
    
    func complectationThird() -> Complect{
        return Complect()//Нужные нам параметры
    }
}




//4 Задание

//Наследование следует использовать для иерархии классов, для того чтобы определить базовое поведение подсущностей.
//Расширение следует использовать для добавления функционала класса, в частности для реализации протоколов.

//5 Задание

//a)Выведет  A
//b)Не скомпилируется, тк класс C не подписан под протокол B
//c)Не скомпилируется, тк v3 имеет тип C, а он в свою очередь не имеет метода d()
//d)Выведет  A

//6 Задание

//Инкапсуляция - объединяет вместе данные и методы, работающие с этими данными и защищает их от нежелательного вмешательства. Данные могут быть закрыты или же открыты.
//Наследование - способность одного объекта или класса наследовать(базироваться) на другом. Наследование определяет иерархию классов.
//Полиморфизм - свойство использовать объекты с одним интерфейсом(в нашем случае протоколы) без информации о типе и внутренней структуре объекта.
