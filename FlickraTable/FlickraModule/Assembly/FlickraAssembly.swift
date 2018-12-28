//
//  FlickraAssembly.swift
//  FlickraTable
//
//  Created by Артур on 27/12/2018.
//  Copyright © 2018 Артур. All rights reserved.
//

import Foundation
import UIKit

class FlickraAssembly {
    
    func build() -> (controller: UINavigationController, presenter: FlickraPresenterInput)? {
        let storyboard = UIStoryboard(name: "FlickraStoryboard", bundle: nil)
        let rootVC = storyboard.instantiateViewController(withIdentifier: "kFlickraNavigationControllerIdentifier")
        guard let navigationVC = rootVC as? UINavigationController,
            let flickraVC = navigationVC.viewControllers.first as? FlickraViewController else {
                print ("nil")
                return nil }
        
        let presenter = FlickraPresenter()
        let interactor = FlickraInteractor()
        
        flickraVC.presenterInput = presenter
        presenter.interactorInput = interactor
        presenter.viewInput = flickraVC
        interactor.output = presenter
        
        return (controller: navigationVC, presenter: presenter)
    }
    
    
    
}
