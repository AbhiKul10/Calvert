
//
//  InterfaceController.swift
//  Watch Calculator WatchKit Extension
//
//  Created by Rudra Jikadra on 13/05/19.
//  Copyright © 2019 Shaping Edge. All rights reserved.
//

/*import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var calc_Label: WKInterfaceLabel!
    
    var calculatingBool: Bool = false
    
    var value = 0
    var prevValue = 0
    var oper: String = ""
    
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

    
  
    @IBAction func ac() {
    
        prevValue = 0
        value = 0
        calc_Label.setText("\(value)")
        calculatingBool = false
    }
    
    
    @IBAction func one() {
    
    addToNumber(num: 1)
    }
    
    @IBAction func two() {
    
    addToNumber(num: 2)
    }
    
    @IBAction func three() {
    
    addToNumber(num: 3)
    }
    
   
    @IBAction func four() {
    
    addToNumber(num: 4)
    }
    
   
    @IBAction func five() {
    
    addToNumber(num: 5)
    }
    
    @IBAction func six() {
    
    addToNumber(num: 6)
    }
    
    
    @IBAction func seven() {
    
    addToNumber(num: 7)
        
    }
    
    
    @IBAction func eight() {
    
    addToNumber(num: 8)
    }
    
    
    @IBAction func nine() {
    
    addToNumber(num: 9)
    }
    
    
    @IBAction func zero() {
    
    addToNumber(num: 0)
    }
    
    
    @IBAction func add() {
    
    operatorPressed(op: "add")
    }
    
    
    @IBAction func sub() {
    
    operatorPressed(op: "sub")
    }
    
    
   
    @IBAction func mul() {
    
    operatorPressed(op: "mul")
    }
    
    @IBAction func div() {
    
    operatorPressed(op: "div")
    }
    
   
    @IBAction func result() {
    
    
        if (calculatingBool) {
            
            var tempRes = 0
            
            if (oper == "add") {
                tempRes = prevValue + value
                
            } else if (oper == "sub") {
                tempRes = prevValue - value
                
            } else if (oper == "mul") {
                tempRes = prevValue * value
                
            } else if (oper == "div") {
                tempRes = prevValue / value
                
            } else { //Error
                
            }
            
            calc_Label.setText("\(tempRes)")
            calculatingBool = false
            
        } else {
            calc_Label.setText("\(value)")
        }
        
    }
    
    
    func addToNumber(num: Int){ // It will just increse number as they are typed
        
        if (!calculatingBool) {
        
            if (value == 0) {
                calc_Label.setText("\(num)")
                value = num
            } else {
                let temp: String = String(value) + String(num)
                value = Int(temp)!
                calc_Label.setText(temp)
            }
            
        } else { //Calculating--- Operator is pressed
            
            if (value == 0) {
                calc_Label.setText("\(num)")
                value = num
            } else {
                let temp: String = String(value) + String(num)
                value = Int(temp)!
                calc_Label.setText(temp)
            }
            
        }
        
    }
    
    func operatorPressed(op: String){
        
        if (!calculatingBool) {
            
            prevValue = value
            value = 0
            
            if (op == "Add") {
                oper = "Add"
                calc_Label.setText("+")
                
            } else if (op == "Sub") {
                oper = "Sub"
                calc_Label.setText("-")
                
            } else if (op == "Mul") {
                oper = "Mul"
                calc_Label.setText("*")
                
            } else if (op == "Div") {
                oper = "Div"
                calc_Label.setText("/")
                
            } else { //Error
                
            }
            
            calculatingBool = true
            
        }
        
        
    }
    
    
}
 */
