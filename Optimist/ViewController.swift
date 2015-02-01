//
//  ViewController.swift
//  Optimist
//
//  Created by Jacob Johannesen on 1/30/15.
//  Copyright (c) 2015 MonsterCreate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let SUN_BAR_HEIGHT: CGFloat = 80.0
    let TEXT_AREA_HEIGHT: CGFloat = 50.0

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(netHex:0xfffdd7)
        // Do any additional setup after loading the view, typically from a nib.
        
        let moodView = MoodView(frame: CGRect(x: 0, y: SUN_BAR_HEIGHT + TEXT_AREA_HEIGHT, width: self.view.frame.width, height: self.view.frame.height - SUN_BAR_HEIGHT - TEXT_AREA_HEIGHT))
        self.view.addSubview(moodView)
        
        let sunBar = SunBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: SUN_BAR_HEIGHT))
        self.view.addSubview(sunBar)
        
        let acceptButton = AcceptButton(width: 200, title: "Accept", moodView: moodView)
        acceptButton.frame = CGRect(x: self.view.frame.width / 2 - acceptButton.frame.width / 2, y: self.view.frame.height - 64, width: acceptButton.frame.width, height: acceptButton.frame.height)
        self.view.addSubview(acceptButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

