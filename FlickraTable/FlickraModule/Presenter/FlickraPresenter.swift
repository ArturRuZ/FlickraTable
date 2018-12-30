//
//  FlickraPresenter.swift
//  FlickraTable
//
//  Created by Артур on 27/12/2018.
//  Copyright © 2018 Артур. All rights reserved.
//

import Foundation


class FlickraPresenter {
    
    private var presenterOutputToCoordinator : FlickraPresenterOutput!
    private var view : FlickraViewtViewInput!
    private var interactor: FlickraInteractorInput!
    
    
}

extension FlickraPresenter : FlickraPresenterInput {
  
    var output: FlickraPresenterOutput {
        get {
            return presenterOutputToCoordinator
        }
        set {
            presenterOutputToCoordinator = newValue
        }
    }
    
    var viewInput: FlickraViewtViewInput {
        get {
            return view
        }
        set {
            view = newValue
        }
        
    }
    
    var interactorInput: FlickraInteractorInput {
        get {
            return interactor
        }
        set {
            interactor = newValue
        }
    }
    
    func getData() {
        interactorInput.getData()
    }
}

extension FlickraPresenter : FlickraInteractorOutput {
    func presentData(storage : [PhotosModel]){
        view.presentData(storage: storage)
    }
    
}
