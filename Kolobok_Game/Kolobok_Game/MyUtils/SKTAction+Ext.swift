//
//  SKTAction+Ext.swift
//  Kolobok_Game
//
//  Created by MacBook on 01.04.2022.
//

import SpriteKit

extension SKAction {
    
    class func playSoundFileNamed(_ fileNamed: String) -> SKAction {
        if !effectEnabled { return SKAction() }
        return SKAction.playSoundFileNamed(fileNamed, waitForCompletion: false)
    }
}

private let keyEffect = "keyEffect"
var effectEnabled: Bool = {
    return UserDefaults.standard.bool(forKey: keyEffect)
}() {
    didSet {
        let value = !effectEnabled
        UserDefaults.standard.setValue(value, forKey: keyEffect)
        
        if value {
            SKAction.stop()
        }
    }
}
