//
//  InterfaceController.swift
//  Optimist WatchKit Extension
//
//  Created by Jacob Johannesen on 1/31/15.
//  Copyright (c) 2015 MonsterCreate. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    init(context: AnyObject?) {
        // Initialize variables here.
        super.init()

        // Configure interface objects here.
        NSLog("%@ init", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
