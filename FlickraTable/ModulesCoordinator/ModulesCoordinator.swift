//
//  ModulesCoordinator.swift
//  FlickraTable
//
//  Created by Артур on 27/12/2018.
//  Copyright © 2018 Артур. All rights reserved.
//

import UIKit


class ModulesCoordinator {
    
    private var flickraView : UINavigationController?
    private var flickraPresenter : FlickraPresenterInput?
    
    func rootModuleController() -> UIViewController {
        let flickraAssembly = FlickraAssembly()
        guard let flickra = flickraAssembly.build() else { return UIViewController() }
        flickra.presenter.output = self
        self.flickraView = flickra.controller
        self.flickraPresenter = flickra.presenter
        return flickra.controller
    }
}

extension ModulesCoordinator : FlickraPresenterOutput {
    
}

extension ModulesCoordinator : RoutingFlickraViewtView {
    func presentFlickraViewtViewIView() {
        
    }
    
    func dismissFlickraViewtViewIView() {
        
    }
}
