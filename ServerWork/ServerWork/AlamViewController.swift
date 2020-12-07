//
//  AlamViewController.swift
//  ServerWork
//
//  Created by Александр on 08.10.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class AlamViewController: UIViewController {
    var weatherForecast: Array <WeatherMoscow> = []
    @IBOutlet weak var currentDateLabel: UILabel!
    @IBOutlet weak var currentWeatherLabel: UILabel!
    @IBOutlet weak var currentTemperature: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var weatherImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadedData.loadWeatherInMoscow2(completion: {weather in
            self.weatherForecast = weather
            self.currentDateLabel.text = "\(weather[0].time)"
            self.currentWeatherLabel.text = "\(weather[0].description)"
            self.currentTemperature.text = "\(Int(weather[0].temp))°"
            self.weatherImage.image = self.imageChoice(data: weather[0])
            self.tableView.reloadData()
        })
    }
    
    func imageChoice(data: WeatherMoscow) -> UIImage {
        if (data.description.contains("rain") || data.description.contains("Rain")){
            return UIImage(named: "rain")!
        }
        
        if (data.description.contains("snow") || data.description.contains("Snow")){
            return UIImage(named: "snow")!
        }
        
        if (data.description.contains("thunderstorm") || data.description.contains("Thunderstorm")){
            return UIImage(named: "storm")!
        }
        
        if (data.description.contains("clear") || data.description.contains("Clear")){
            return UIImage(named: "sun")!
        }
        
        return UIImage(named: "cloud")!
    }
}

extension AlamViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherForecast.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dvc = tableView.dequeueReusableCell(withIdentifier: "AlamWeatherCell") as! AlamTableViewCell
        
        dvc.dayLabel.text = "\(weatherForecast[indexPath.row].time)"
        dvc.temperatureLabel.text = "\(Int(weatherForecast[indexPath.row].temp))°"
        dvc.weatherLabel.text = "\(weatherForecast[indexPath.row].description)"
        dvc.weatherImage.image = self.imageChoice(data: weatherForecast[indexPath.row])
        return dvc
    }
}
