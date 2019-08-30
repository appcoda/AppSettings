//
//  PlayerSettings.swift
//  AppSettings
//
//  Created by Gabriel Theodoropoulos.
//  Copyright © 2019 Appcoda. All rights reserved.
//

import Foundation

struct PlayerSettings: Codable, SettingsManageable {
    
    var team: String?
    
    var isMale: Bool?
    
    var gunType: Int?
    
    var powerLevels: [Int]?
    
    
}
