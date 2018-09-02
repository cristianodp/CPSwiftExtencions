//
//  ViewController.swift
//  CPSwiftExtencions
//
//  Created by cristianodp@gmail.com on 09/02/2018.
//  Copyright (c) 2018 cristianodp@gmail.com. All rights reserved.
//

import UIKit
import CPSwiftExtencions

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DateExentcions()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func DateExentcions(){
        
        var d = Date()
        
        //add days on current date
        d.add(days: 5)
        print(d)
        
        
        //add hours on current date
        d.add(hours: 12)
        print(d)
        
        
        //add hours on current date
        d.add(minutes: 10)
        print(d)
        
        
    }

}

