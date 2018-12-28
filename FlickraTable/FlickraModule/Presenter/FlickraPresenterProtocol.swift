//
//  FlickraPresenterProtocol.swift
//  FlickraTable
//
//  Created by Артур on 27/12/2018.
//  Copyright © 2018 Артур. All rights reserved.
//

import Foundation


protocol FlickraPresenterInput: class {
    var output: FlickraPresenterOutput { get set }
    var viewInput: FlickraViewtViewInput { get set }
    var interactorInput: FlickraInteractorInput { get set }
   
    
}

protocol FlickraPresenterOutput: class {
    
}



