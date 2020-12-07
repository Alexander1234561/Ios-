import Foundation


class WeatherMoscow {
    let time: String
    let description: String
    let temp: Double
    
    
    init?(data: Dictionary<String, Any>){
        
        var tmp: String = ""
        var minTemp: Double = 0
        var maxTemp: Double = 0
        
        guard let time = data["dt"] as? Double else{return nil}
        
        if let descrip = data["weather"] as? NSArray{
            if let des = descrip as? [Dictionary<String, Any>]{
                for el in des{
                    guard let d = el["description"] as? String else{ return nil }
                    tmp = d
                }
            }
        }
        
        if let temperature = data["temp"] as? Dictionary<String, Any>{
            guard let minT = temperature["max"] as? Double,
                  let maxT = temperature["min"] as? Double
            else{ return nil }
            maxTemp = maxT
            minTemp = minT
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        let date = Date(timeIntervalSince1970: time)
        
        self.time = formatter.string(from: date as Date)
        self.description = tmp
        self.temp = (maxTemp + minTemp) / 2
    }
    
    
    init(time: Double, description: String, temp: Double) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        let date = Date(timeIntervalSince1970: time)
        
        self.temp = temp
        self.time = formatter.string(from: date as Date)
        self.description = description
    }
}
