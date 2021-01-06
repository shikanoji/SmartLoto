//
//  Global.swift
//  SmartLoto
//
//  Created by nguyen.dinh.thach on 1/6/21.
//

import Foundation

class Global {
    static let shared = Global()
    
    func getCurrentDateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let dateString = dateFormatter.string(from: Date())
        return dateString
    }
    
    func loadLastestDataIfNeeded() {
         
    }
}
