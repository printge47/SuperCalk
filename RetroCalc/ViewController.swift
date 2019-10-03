//
//  ViewController.swift
//  RetroCalc
//
//  Created by ladmin on 03/10/2019.
//  Copyright © 2019 ladmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var B1: UIButton!
    
    @IBOutlet weak var B2: UIButton!
    
    @IBOutlet weak var B4: UIButton!
    @IBOutlet weak var B3: UIButton!
    
    @IBOutlet weak var B5: UIButton!
    
    @IBOutlet weak var B6: UIButton!
    
    @IBOutlet weak var B7: UIButton!
    
    @IBOutlet weak var B8: UIButton!
    
    @IBOutlet weak var B0: UIButton!
    @IBOutlet weak var B9: UIButton!
    
    @IBOutlet weak var BB: UIButton!
    
    @IBOutlet weak var Bc: UIButton!
    @IBOutlet weak var BP: UIButton!
    
    @IBOutlet weak var BU: UIButton!
    @IBOutlet weak var BM: UIButton!
    
    @IBOutlet weak var BD: UIButton!
    
    @IBOutlet weak var Out: UILabel!
    var OutValue :String = " "
    var Primari : Double = 0
    var Second : Double = 0
    var shec : String = ""
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func dinput(_ sender:UIButton) {
        if sender.tag == 100 {
            OutValue = Out.text!
            if OutValue != "0"   {
        OutValue = OutValue + "0"
        }
            Out.text = OutValue
    }
  }
    @IBAction func Dinput1(_ sender: UIButton) {
        
         
if sender.tag == 10 {
OutValue = Out.text!
if OutValue != "0"   {
OutValue = OutValue + "1"
                }
                    Out.text = OutValue
            }

        }
   
    @IBAction func Dinput2(_ sender: UIButton) {
        if sender.tag == 20 {
        OutValue = Out.text!
        if OutValue != "0"   {
        OutValue = OutValue + "2"
                        }
        Out.text = OutValue
                    }
    }
    
    @IBAction func Dinput3(_ sender: UIButton) {
        if sender.tag == 30 {
        OutValue = Out.text!
        if OutValue != "0"   {
        OutValue = OutValue  + "3"                      }
Out.text = OutValue
                    }
        
    }
    
    @IBAction func Dinput4(_ sender: UIButton) {
         if sender.tag == 40 {
                OutValue = Out.text!
                if OutValue != "0"   {
                OutValue = OutValue  + "4"                      }
        Out.text = OutValue
            
        }
}

    @IBAction func Dinput5(_ sender: UIButton) {
         if sender.tag == 50 {
                OutValue = Out.text!
                if OutValue != "0"   {
                OutValue = OutValue  + "5"                      }
        Out.text = OutValue    }
}
    
    @IBAction func Dinput6(_ sender: UIButton) {
         if sender.tag == 60 {
                OutValue = Out.text!
                if OutValue != "0"   {
                OutValue = OutValue  + "6"                      }
        Out.text = OutValue    }
}
    @IBAction func Dinput7(_ sender: UIButton) {
         if sender.tag == 70 {
                OutValue = Out.text!
                if OutValue != "0"   {
                OutValue = OutValue  + "7"                      }
        Out.text = OutValue    }
}
    @IBAction func Dinput8(_ sender: UIButton) {
         if sender.tag == 80 {
                OutValue = Out.text!
                if OutValue != "0"   {
                OutValue = OutValue  + "8"                      }
        Out.text = OutValue    }
}
    @IBAction func Dinput9(_ sender: UIButton) {
         if sender.tag == 90 {
                OutValue = Out.text!
                if OutValue != "0"   {
                OutValue = OutValue  + "0"                      }
        Out.text = OutValue
            
        }
}

    @IBAction func Add(_ sender: UIButton) {
        if sender.tag == 1000 {
            Primari = (OutValue as NSString).doubleValue
            shec = "+"
            Out.text = ""
             OutValue =""        }
    }
    @IBAction func Dec(_ sender: UIButton) {
         if sender.tag == 2000 {
                   Primari = (OutValue as NSString).doubleValue
                   shec = "2"
            Out.text = " "
             OutValue = ""        }
}
    @IBAction func Mul(_ sender: UIButton) {
         if sender.tag == 3000 {
                   Primari = (OutValue as NSString).doubleValue
                   shec = "3"
                    
            Out.text = " "
             OutValue = ""        }
}

    @IBAction func Div(_ sender: UIButton) {
         if sender.tag == 4000 {
                   Primari = (OutValue as NSString).doubleValue
                   shec = "4"
            Out.text = ""
            OutValue = ""
        }
    }

    @IBAction func Return(_ sender: UIButton) {
        Second = (OutValue as NSString).doubleValue
        
        switch shec{
        case "+" :
            OutValue = String (Primari + Second)
            case "-" :
        OutValue = String (Primari - Second)
            case "*" :
            OutValue = String (Primari * Second)
            case "/" :
        OutValue = String (Primari / Second)
        default:
            Out.text = "Error 404"
            
        }
        Out.text = OutValue
    }
}
