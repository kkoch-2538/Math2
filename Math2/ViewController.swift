//
//  ViewController.swift
//  Math2
//
//  Created by 吉村花菜 on 2024/04/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    @IBOutlet var Button5: UIButton!
    @IBOutlet var Button6: UIButton!
    @IBOutlet var Button7: UIButton!
    @IBOutlet var Button8: UIButton!
    @IBOutlet var Button9: UIButton!
    @IBOutlet var Button10: UIButton!
    @IBOutlet var Button11: UIButton!
    @IBOutlet var Button12: UIButton!
    
    var select = 0
    
    override func viewDidLoad() {
        
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        super.viewDidLoad()
        
    }
    @IBAction func nextButton(){
        
        var Button4 = 0
        var Button6 = 0
        var Button8 = 0
        var Button5 = "?"
        var Button7 = "?"
       
        var label = Int.random(in: 1...50)
        var Button1 = Int.random(in: 1...9)
        var Button2 = Int.random(in: 1...9)
        var Button3 = Int.random(in: 1...9)
        
    }
    
    @IBAction func changeButton1(){
        select = 1
    }
    
    @IBAction func changeButton2(){
        select = 2
    }
    
    @IBAction func numberButton(){
        select = 3
    }
    
    @IBAction func numberButton2(){
        select = 4
    }
    
    @IBAction func numberButton3(){
        select = 5
    }
    
    @IBAction func plus(){
        if(select == 1){
            Button5.titleLabel?.adjustsFontSizeToFitWidth = true
            Button5.setTitle("+", for: .normal)
        }else if(select == 2){
            Button7.setTitle("+", for: .normal)
        }
    }
    
    @IBAction func minus(){
        if(select == 1){
            Button5.setTitle("-", for: .normal)
        }else if(select == 2){
            Button7.setTitle("-", for: .normal)
        }
    }
    @IBAction func times(){
        if(select == 1){
            Button5.setTitle("×", for: .normal)
        }else if(select == 2){
            Button7.setTitle("×", for: .normal)
        }
    }
    @IBAction func division(){
        if(select == 1){
            Button5.setTitle("÷", for: .normal)
        }else if(select == 2){
            Button7.setTitle("÷", for: .normal)
        }
    }
    
    @IBAction func number1(){
        if(select == 3){
            
        }else if(select == 4){
            
        }else if(select == 5){
            
        }
    }
    
    @IBAction func number2(){
        if(select == 3){
            
        }else if(select == 4){
            
        }else if(select == 5){
            
        }
    }
    
    @IBAction func number3(){
        if(select == 3){
            
        }else if(select == 4){
            
        }else if(select == 5){
            
        }
    }
    
}


