//
//  AppSettings.swift
//  AppSettings
//
//  Created by Gabriel Theodoropoulos.
//  Copyright © 2019 Appcoda. All rights reserved.
//

import UIKit

class AppSettings: Codable, SettingsManageable {
    /// The shared instance.
    static var shared = AppSettings()
    
    // MARK: - Properties Representing Settings
    
    var playSFX = true
    
    var themeIndex = 1
    
    var fontName = "AvenirNext-Regular"
    
    var fontSize: CGFloat = 17.0
    
    
    
    // MARK: - Init
    
    private init() {
        
    }
    
}
