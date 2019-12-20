//
//  basicController.swift
//  Calc WatchKit Extension
//
//  Created by Abhi Kulshrestha on 13/12/19.
//  Copyright © 2019 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import WatchKit





class basicController: WKInterfaceController{
    @IBOutlet weak var clabel: WKInterfaceLabel!
    var calculatingBool: Bool = false
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }
    
    override func awake(withContext context: Any?) {
           super.awake(withContext: context)
           
          rstousd()
          rstoeuro()
          rstopounds()
          rstoaud()
       }
   
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    var flt: Float = 1.0
    var value = 0
    var prevValue = 0
    var oper: String = ""
    var tempRes:Int = 0
    var converted = 0
    var yard: Double = 0
    var foots: Double = 0
    var inch: Double = 0
    var mile: Double = 0
    var sqryd: Double = 0
    var sqrft: Double = 0
    var acre: Double = 0
    var hectares: Double = 0
    var fahren: Double = 0
    var kel: Double = 0
    var rad: Double = 0
    var deg: Double = 0
    var usdValue: Double = 0
    var euroValue: Double = 0
    var poundValue: Double = 0
    var audValue: Double = 0
    var usd:Double = 0
    var euro:Double = 0
    var gbp:Double = 0
    var aud:Double = 0
    
    
    
    @IBAction func ac() {
        prevValue = 0
        value = 0
        clabel.setText("\(value)")
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
        operatorPressed(op: "Add")
    }
    @IBAction func sub() {
        operatorPressed(op: "Sub")
    }
    @IBAction func mul() {
        operatorPressed(op: "Mul")
    }
    @IBAction func div() {
        operatorPressed(op: "Div")
    }
    @IBAction func result() {
        
        if (calculatingBool) {
            
            
            
            if (oper == "Add") {
                tempRes = prevValue + value
                
            } else if (oper == "Sub") {
                tempRes = prevValue - value
                
            } else if (oper == "Mul") {
                tempRes = prevValue * value
                
            } else if (oper == "Div") {
                tempRes = prevValue / value
                
            } else { //Error
                
            }
            
            clabel.setText("\(tempRes)")
           
            
            calculatingBool = false
            
            
        } else {
            clabel.setText("\(value)")
            
        }

    }
   
    @IBOutlet weak var converterlabel: WKInterfaceLabel!
    
    @IBAction func yards() {
        yard = Double(tempRes)*1.09361;
        converterlabel.setText("\(yard)")
        
    }
    @IBAction func Foot() {
        foots = Double(tempRes)*3.28084;
        converterlabel.setText("\(foots)")
    }
    
    @IBAction func inches() {
        inch = Double(tempRes)*39.3701;
        converterlabel.setText("\(inch)")
    }
    @IBAction func miles() {
        mile = Double(tempRes)*0.000621371;
        converterlabel.setText("\(mile)")
    }
    
    @IBAction func sqyrd() {
        sqryd = Double(tempRes)*1.19599;
        converterlabel.setText("\(sqryd)")
    }
    @IBAction func sqft() {
        sqrft = Double(tempRes)*10.7639;
        converterlabel.setText("\(sqrft)")
    }
    @IBAction func acres() {
        acre = Double(tempRes)*0.000247105;
        converterlabel.setText("\(acre)")
    }
    @IBAction func hectare() {
        hectares = Double(tempRes)*1e-4;
        converterlabel.setText("\(hectares)")
        
    }
    @IBAction func fahrenite() {
        fahren = (Double(tempRes)*1.8) + 32;
        converterlabel.setText("\(fahren)")
    }
    @IBAction func Kelvin() {
        kel = Double(tempRes)+273.15;
        converterlabel.setText("\(kel)")
    }
    
    @IBAction func Radians() {
        rad = Double(tempRes)*0.0174533;
        converterlabel.setText("\(rad)")
        
    }
    
    @IBAction func degree() {
        deg = Double(tempRes)*57.2958;
        converterlabel.setText("\(deg)")
    }
    
    @IBAction func USD() {
        
        
        usd = usdValue * Double(tempRes);
        converterlabel.setText("\(usd)")
           }
       
    @IBAction func EURO() {
        
       
        euro = euroValue * Double(tempRes);
        converterlabel.setText("\(euro)")

        
    }
    
    @IBAction func POUNDS() {
        
        gbp = poundValue * Double(tempRes);
        converterlabel.setText("\(gbp)")

    }
    
        
    @IBAction func AUD() {
        aud = audValue * Double(tempRes);
        converterlabel.setText("\(aud)")
    }
    

    
    @IBAction func conv() {
        
    }
    
    /* func contextForSegue(withIdentifier: String) -> Int? {
        if withIdentifier == "nextseg"{
        
            return Int("%d",radix: tempRes)
            
        }
        return nil
        
    }*/
    
    
   
    
    func addToNumber(num : Int){
        if(!calculatingBool){
            if(value == 0){
                clabel.setText("\(num)")
                value = num
            } else {
                let tempo: String = String(value) + String(num)
                value = Int(tempo)!
                clabel.setText(tempo)
            }
        } else {
            if(value == 0){
                clabel.setText("\(num)")
                value = num
            } else {
                let tempo: String = String(value) + String(num)
                value = Int(tempo)!
                clabel.setText(tempo)
            }
            //calculatingBool = false
        }
    }
    func operatorPressed(op: String){
        if(!calculatingBool){
            prevValue = value
            value = 0
            
            if(op == "Add"){
                oper = "Add"
                clabel.setText("+")
            } else if (op == "Sub"){
                oper = "Sub"
                clabel.setText("-")
            } else if (op == "Mul"){
                oper = "Mul"
                clabel.setText("*")
            } else if (op == "Div"){
                oper = "Div"
                clabel.setText("/")
            } else {
                //error
            }
            
            calculatingBool = true
            
        }
    }
   
    func rstousd(){
        let conLink:[String] = ["https://free.currconv.com/api/v7/convert?q=INR_USD&compact=ultra&apiKey=283ca2db6715ddae4351", "https://free.currconv.com/api/v7/convert?q=INR_EUR&compact=ultra&apiKey=283ca2db6715ddae4351", "https://free.currconv.com/api/v7/convert?q=INR_GBP&compact=ultra&apiKey=283ca2db6715ddae4351","https://free.currconv.com/api/v7/convert?q=INR_AUD&compact=ultra&apiKey=283ca2db6715ddae4351"]
        for link in conLink{
            let url = URL(string: link)
            let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
                if error != nil{
                    print("ERROR")
                }
                else{
                    if let content = data{
                        do{
                            if link == conLink[0]{
                                let myJson = try JSONSerialization.jsonObject(with: content) as! [String:Any]
                                
                                if let ratesusd = myJson["INR_USD"] as? Double{
                                    self.usdValue = ratesusd
                                }
                            }
                            
                            
                        }
                        catch{
                            
                        }
                    }
                }
                }
                task.resume()
            
            
            
        }
        
    }
    
    func rstoeuro(){
        let conLink:[String] = ["https://free.currconv.com/api/v7/convert?q=INR_USD&compact=ultra&apiKey=283ca2db6715ddae4351", "https://free.currconv.com/api/v7/convert?q=INR_EUR&compact=ultra&apiKey=283ca2db6715ddae4351", "https://free.currconv.com/api/v7/convert?q=INR_GBP&compact=ultra&apiKey=283ca2db6715ddae4351","https://free.currconv.com/api/v7/convert?q=INR_AUD&compact=ultra&apiKey=283ca2db6715ddae4351"]
               for link in conLink{
                   let url = URL(string: link)
                   let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
                       if error != nil{
                           print("ERROR")
                       }
                       else{
                           if let content = data{
                               do{
                                   if link == conLink[1]{
                                       let myJson = try JSONSerialization.jsonObject(with: content) as! [String:Any]
                                       
                                       if let rateseuro = myJson["INR_EUR"] as? Double{
                                           self.euroValue = rateseuro
                                       }
                                   }
                                   
                                   
                               }
                               catch{
                                   
                               }
                           }
                       }
                       }
                       task.resume()
                   
                   
                   
               }
        
    }
    
    func rstopounds(){
        let conLink:[String] = ["https://free.currconv.com/api/v7/convert?q=INR_USD&compact=ultra&apiKey=283ca2db6715ddae4351", "https://free.currconv.com/api/v7/convert?q=INR_EUR&compact=ultra&apiKey=283ca2db6715ddae4351", "https://free.currconv.com/api/v7/convert?q=INR_GBP&compact=ultra&apiKey=283ca2db6715ddae4351","https://free.currconv.com/api/v7/convert?q=INR_AUD&compact=ultra&apiKey=283ca2db6715ddae4351"]
        for link in conLink{
            let url = URL(string: link)
            let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
                if error != nil{
                    print("ERROR")
                }
                else{
                    if let content = data{
                        do{
                            if link == conLink[2]{
                                let myJson = try JSONSerialization.jsonObject(with: content) as! [String:Any]
                                
                                if let ratespound = myJson["INR_GBP"] as? Double{
                                    self.poundValue = ratespound
                                }
                            }
                            
                        }
                        catch{
                            
                        }
                    }
                }
                }
                task.resume()
            
            
            
        }
        
    }
    
    func rstoaud(){
        let conLink:[String] = ["https://free.currconv.com/api/v7/convert?q=INR_USD&compact=ultra&apiKey=283ca2db6715ddae4351", "https://free.currconv.com/api/v7/convert?q=INR_EUR&compact=ultra&apiKey=283ca2db6715ddae4351", "https://free.currconv.com/api/v7/convert?q=INR_GBP&compact=ultra&apiKey=283ca2db6715ddae4351","https://free.currconv.com/api/v7/convert?q=INR_AUD&compact=ultra&apiKey=283ca2db6715ddae4351"]
        for link in conLink{
            let url = URL(string: link)
            let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
                if error != nil{
                    print("ERROR")
                }
                else{
                    if let content = data{
                        do{
                            if link == conLink[3]{
                                let myJson = try JSONSerialization.jsonObject(with: content) as! [String:Any]
                                
                                if let ratesaud = myJson["INR_AUD"] as? Double{
                                    self.audValue = ratesaud
                                }
                            }
                            
                        }
                        catch{
                            
                        }
                    }
                }
                }
                task.resume()
            
            
            
        }
        
    }
        
        
        
        // Configure interface objects here.
    
  
    
}
