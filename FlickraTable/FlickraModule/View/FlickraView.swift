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
        let url = URL(string: "https://www.flickr.com/services/rest?method=flickr.interestingness.getList&api_key=3988023e15f45c8d4ef5590261b1dc53&per_page=40&page=1&format=json&nojsoncallback=1&extras=url_l&date=2018-09-23")!
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
            let photosResponse = try JSONDecoder().decode(PhotosResponse.self, from: data)
            print (photosResponse.photos.photo[1].url_l)
            //print(photosResponse)
        } catch {
            print("error = \(error.localizedDescription)")
        }
    }
} 
