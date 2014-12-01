//
//  InterfaceController.swift
//  SwiftAppleWatch1 WatchKit Extension
//
//  Created by Albert Saucedo on 11/28/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var lblChange: WKInterfaceLabel!
    @IBOutlet weak var btnChangeQuote: WKInterfaceButton!
    
    @IBOutlet weak var lblQuote: WKInterfaceLabel!
    
    var number = 12
    
    var quotes = ["1", "2", "3","4","5"]
    
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
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
    @IBAction func onChangeText() {
        lblChange.setText("Changed to \(number)")
    }

    @IBAction func onNewQuoteChange() {
        var randomQuote: Int =  Int(arc4random()) % quotes.count
        NSLog("@ \(quotes[randomQuote])", self)
        lblQuote.setText(quotes[randomQuote])
    }
}
