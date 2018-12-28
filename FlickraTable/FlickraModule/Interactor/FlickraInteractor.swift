//
//  FlickraInteractor.swift
//  FlickraTable
//
//  Created by Артур on 27/12/2018.
//  Copyright © 2018 Артур. All rights reserved.
//

import Foundation

class FlickraInteractor {
    private var interactorOutput : FlickraInteractorOutput!
    
}

extension FlickraInteractor : FlickraInteractorInput {
    var output: FlickraInteractorOutput {
        get {
            return interactorOutput
        }
        set {
            interactorOutput = newValue
        }
    }
    
    
}
