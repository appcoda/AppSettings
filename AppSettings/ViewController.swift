//
//  ViewController.swift
//  AppSettings
//
//  Created by Gabriel Theodoropoulos.
//  Copyright © 2019 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tryAppSettings()
        print("\n\n")
        tryPlayerSettings()
    }

    
    
    func tryAppSettings() {
        print(AppSettings.shared.settingsURL().path)
        
        AppSettings.shared.fontSize = 21.0
        AppSettings.shared.playSFX = false
        if AppSettings.shared.update() {
            if let dictionary = AppSettings.shared.toDictionary() {
                print(dictionary.compactMapValues  { $0 })
            }
        }
        
        if AppSettings.shared.reset() {
            if let dictionary = AppSettings.shared.toDictionary() {
                print(dictionary.compactMapValues  { $0 })
            }
        }
    }
    
    
    func tryPlayerSettings() {
        var playerSettings = PlayerSettings()
        if playerSettings.loadUsingSettingsFile() {
            if let dictionary = playerSettings.toDictionary() {
                print(dictionary.compactMapValues  { $0 })
            }
        }
        
        playerSettings.isMale = false
        playerSettings.gunType = 1
        playerSettings.powerLevels?[0] = 1
        playerSettings.powerLevels?[1] = 1
        playerSettings.powerLevels?[3] = 5
        playerSettings.powerLevels?[4] = 5
        _ = playerSettings.update()
        if let dictionary = playerSettings.toDictionary() {
            print("\n", dictionary.compactMapValues  { $0 })
        }
        
        _ = playerSettings.reset()
        if let dictionary = playerSettings.toDictionary() {
            print("\n", dictionary.compactMapValues  { $0 })
        }
    }
    
}

