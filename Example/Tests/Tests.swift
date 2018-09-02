// https://github.com/Quick/Quick

import UIKit
import XCTest
import CPSwiftExtencions

class Tests:XCTestCase{
    
    override func setUp() {
        super.setUp()
    }
    
    func test_add_days(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let d1:Date = formatter.date(from: "2017-09-05 23:00:11 +0000")!
        let d2:Date = formatter.date(from: "2017-09-03 23:00:11 +0000")!
        var d3:Date = formatter.date(from: "2017-09-01 23:00:11 +0000")!
    
        XCTAssert(d1 != d3,"Is diferent dates")
        
        d3.add(days: 4)
        XCTAssert(d1 == d3,"Add days")
        
        d3.add(days: -2)
        XCTAssert(d2 == d3,"Remove days")
    }
    
    
    func test_add_hours(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let d1:Date = formatter.date(from: "2017-09-01 10:00:00 +0000")!
        let d2:Date = formatter.date(from: "2017-09-01 09:00:00 +0000")!
        var d3:Date = formatter.date(from: "2017-09-01 06:00:00 +0000")!
        
        XCTAssert(d1 != d3,"Is diferent datetime")
        
        d3.add(hours: 4)
        XCTAssert(d1 == d3,"Add hours")
        
        d3.add(hours: -1)
        XCTAssert(d2 == d3,"Remove hours")
        
    }
    
    
    func test_add_minutes(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let d1:Date = formatter.date(from: "2017-09-01 00:10:00 +0000")!
        let d2:Date = formatter.date(from: "2017-09-01 00:09:00 +0000")!
        var d3:Date = formatter.date(from: "2017-09-01 00:06:00 +0000")!
        
        XCTAssert(d1 != d3,"Is diferent datetime")
        
        d3.add(minutes: 4)
        XCTAssert(d1 == d3,"Add minutes")
        
        d3.add(minutes: -1)
        XCTAssert(d2 == d3,"Remove minutes")
        
    }
    
}
