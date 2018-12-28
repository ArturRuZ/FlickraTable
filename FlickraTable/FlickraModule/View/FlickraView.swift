//
//  FlickraView.swift
//  FlickraTable
//
//  Created by Артур on 27/12/2018.
//  Copyright © 2018 Артур. All rights reserved.
//

import UIKit


class FlickraViewController : UIViewController {
    
    private var presenter : FlickraPresenterInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        demoNetworking()
    }

    
}


extension FlickraViewController : FlickraViewtViewInput {
    var presenterInput: FlickraPresenterInput {
        get {
            return presenter
        }
        set {
            presenter = newValue
        }
    }
    
    
}


extension FlickraViewController {
    private func demoNetworking() {
        let url = URL(string: "https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.parse(data: data)
            }
        }
        task.resume()
    }
    
    private func parse(data: Data) {
        print("длина байтов -= \(data.count)")
        
        do {
            let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
            print(weatherResponse)
        } catch {
            print("error = \(error.localizedDescription)")
        }
    }
} 
