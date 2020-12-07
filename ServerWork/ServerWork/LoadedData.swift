import Foundation
import Alamofire

class LoadedData{
    
    static func loadWeatherInMoscow(completion: @escaping([WeatherMoscow]) -> Void ){
        let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=55.7522&lon=37.6156&exclude=hourly,minutly,current,alerts&units=metric&appid=709c6ede6fe687c28778dfe8a5fb981f")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data,
                let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments),
                let jsonDict = json as? NSDictionary{
                var weatherForecast: Array<WeatherMoscow> = []
                for (i,data) in jsonDict where data is NSArray{
                    if let i = i as? String{
                        if (i == "daily"){
                            if let el = data as? [Dictionary<String, Any>]{
                                for i in el{
                                    if let weatherMoscow = WeatherMoscow(data: i){weatherForecast.append(weatherMoscow)}
                                }
                            }
                        }
                    }
                }
                DispatchQueue.main.async {
                    completion(weatherForecast)
                }
            }
        }
        task.resume()
    }
    
    static func loadWeatherInMoscow2(completion: @escaping([WeatherMoscow]) -> Void ){
        Alamofire.request("https://api.openweathermap.org/data/2.5/onecall?lat=55.7522&lon=37.6156&exclude=hourly,minutly,current,alerts&units=metric&appid=709c6ede6fe687c28778dfe8a5fb981f").responseJSON{ response in
            if let objects = response.result.value,
                let jsonDict = objects as? NSDictionary{
                    var weatherForecast: Array<WeatherMoscow> = []
                    for (i,data) in jsonDict where data is NSArray{
                        if let i = i as? String{
                            if (i == "daily"){
                                if let el = data as? [Dictionary<String, Any>]{
                                    for i in el{
                                        if let weatherMoscow = WeatherMoscow(data: i){weatherForecast.append(weatherMoscow)}
                                    }
                                }
                            }
                        }
                    }
                    DispatchQueue.main.async {
                        completion(weatherForecast)
                    }
            }
        }
            
    }

static func loadWeatherInMoscow3(completion: @escaping([WeatherMoscow]) -> Void) {
    Alamofire.request("https://api.openweathermap.org/data/2.5/onecall?lat=55.7522&lon=37.6156&exclude=hourly,minutly,current,alerts&units=metric&appid=709c6ede6fe687c28778dfe8a5fb981f").responseData { response in
        let welcome = try? JSONDecoder().decode(Welcome.self, from: response.data!)
        var weatherForecast: Array<WeatherMoscow> = []
        for i in (welcome?.daily)! {
            let weatherMoscow = WeatherMoscow(time: Double(i.dt), description: i.weather[0].weatherDescription, temp: (i.temp.max + i.temp.min)/2)
            weatherForecast.append(weatherMoscow)
            DispatchQueue.main.async { completion(weatherForecast) }
            }
        }
    }
}
