//
//  CPSwiftExtencions.swift
//  CPSwiftExtencions
//
//  Created by Cristiano Diniz Pinto on 02/09/18.
//

import Foundation


extension Date {
    
    func minute()->TimeInterval{  return 60.0 }
    func hour() -> TimeInterval{ return minute() * 60.0}
    func day() -> TimeInterval{ return hour() * 24}
    
    public mutating func add(minutes:TimeInterval){
        self =  Date(timeInterval: minutes * minute(), since: self)
    }
    
    public mutating func add(hours:TimeInterval) {
        self =  Date(timeInterval: hours * hour(), since: self)
    }
    
    public mutating func add(days:TimeInterval) {
        self = Date(timeInterval: days * day(), since: self)
    }
}

extension UIViewController{
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    func showKeyboard() {
        view.endEditing(false)
    }
}

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
