//
//  LoadingIndicator.swift
//  Mohsbaa
//
//  Created by abuzeid on 4/8/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

import Foundation
import VHUD
protocol LoadingIndicator {
    static func showLoad()
    static func hideLoading()
}


class ActivityLoadingIndicator:LoadingIndicator{
    private static var content = VHUDContent(.loop(3.0))
    
    static func showLoad() {
        content.shape = .circle
        VHUD.show(content)

    }
    
    static func hideLoading() {
        VHUD.dismiss(0)
    }
    
    
}
