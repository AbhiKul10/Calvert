//
//  ConverterInterfaceCOntrollerInterfaceController.swift
//  Calc WatchKit Extension
//
//  Created by Abhi Kulshrestha on 15/12/19.
//  Copyright © 2019 Abhi Kulshrestha. All rights reserved.
//

import WatchKit
import Foundation


class ConverterInterfaceCOntrollerInterfaceController: WKInterfaceController {
    
        @IBOutlet weak var Convlabel: WKInterfaceLabel!
    
    @IBAction func Button4() {
       //Convlabel.setText("\(tempRes)")
       
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
