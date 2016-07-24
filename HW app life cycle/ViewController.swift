//
//  ViewController.swift
//  HW9
//
//  Created by Fly on 7/22/16.
//  Copyright © 2016 Fly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var goBackCount: UILabel!
    @IBOutlet weak var pracCount: UILabel!
    @IBOutlet weak var goFrontCount: UILabel!
    
    
    func goToBack() {
        print("TestTestTest")
        goBackCount.text = String(Int(goBackCount.text!)!+1) //Go to background counter +1
        pracCount.text = String(Int(goBackCount.text!)! * -1 + Int(goFrontCount.text!)! * 2) //Calculate the resunt
        
    }
    
    func goBackFront() {
        
        goFrontCount.text = String(Int(goFrontCount.text!)!+1) // Go to front counter +1
        pracCount.text = String(Int(goBackCount.text!)! * -1 + Int(goFrontCount.text!)! * 2) //Calculate the result
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.goToBack), name: Notification.Name.UIApplicationDidEnterBackground, object: nil) //send notification when app enter background
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.goBackFront), name: Notification.Name.UIApplicationDidBecomeActive, object: nil) //send notification when app enter background
        
        goBackCount.text = String(0) //set initial value for counters
        goFrontCount.text = String(0) //set initial value for counters
        pracCount.text = String(0) //set initial value for counters
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

