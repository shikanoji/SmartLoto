//
//  UserDefaultManager.swift
//  SmartLoto
//
//  Created by nguyen.dinh.thach on 1/6/21.
//

import Foundation

class UserDefaultManager {
    private static let lastestDateKey = "lastestDate"
    
    static var lastestDate: String? {
        get {
            return UserDefaults.standard.string(forKey: lastestDateKey)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: lastestDateKey)
        }
    }
}
