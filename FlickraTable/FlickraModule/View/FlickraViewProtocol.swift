//
//  FlickraViewProtocol.swift
//  FlickraTable
//
//  Created by Артур on 27/12/2018.
//  Copyright © 2018 Артур. All rights reserved.
//

import Foundation


protocol FlickraViewtViewInput: class {
    var presenterInput: FlickraPresenterInput { get set }

}


protocol RoutingFlickraViewtView: class {
    func presentFlickraViewtViewIView()
    func dismissFlickraViewtViewIView()
}
