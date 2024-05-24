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
    
    @IBAction func backhomeButton(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButton(){
       
        Button4.setTitle("0", for: .normal)
        Button6.setTitle("0", for: .normal)
        Button8.setTitle("0", for: .normal)
        Button5.setTitle("?", for: .normal)
        Button7.setTitle("?", for: .normal)
        
        based()
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
            //let number1 = Int.random(in: 1...9)
            //let num1 = String(number1)
            //Button4.setTitle(num1, for: .normal)
        }else if(select == 4){
            //let number1 = Int.random(in: 1...9)
           // let num1 = String(number1)
           // Button6.setTitle(num1, for: .normal)
        }else if(select == 5){
           // let number1 = Int.random(in: 1...9)
           // let num1 = String(number1)
           // Button8.setTitle(num1, for: .normal)
        }
    }
    
    @IBAction func number2(){
        if(select == 3){
            //let number2 = Int.random(in: 1...9)
            //let num2 = String(number2)
            //Button4.setTitle(num2, for: .normal)
        }else if(select == 4){
           // let number2 = Int.random(in: 1...9)
           // let num2 = String(number2)
           // Button6.setTitle(num2, for: .normal)
        }else if(select == 5){
           // let number2 = Int.random(in: 1...9)
           // let num2 = String(number2)
           // Button8.setTitle(num2, for: .normal)
        }
    }
    
    @IBAction func number3(){
        if(select == 3){
            //let number3 = Int.random(in: 1...9)
            //let num3 = String(number3)
            //Button4.setTitle(num3, for: .normal)
        }else if(select == 4){
            //let number3 = Int.random(in: 1...9)
            //let num3 = String(number3)
            //Button6.setTitle(num3, for: .normal)
        }else if(select == 5){
            //let number3 = Int.random(in: 1...9)
           // let num3 = String(number3)
            //Button8.setTitle(num3, for: .normal)
        }
    }
    
    func based(){
        let number = Int.random(in: 1...50)
        let number1 = Int.random(in: 1...9)
        let number2 = Int.random(in: 1...9)
        let number3 = Int.random(in: 1...9)
    
        let num1 = String(number1)
        let num2 = String(number2)
        let num3 = String(number3)
        
        label.text = String(number)
        Button1.setTitle(num2, for: .normal)
        Button2.setTitle(num2, for: .normal)
        Button3.setTitle(num3, for: .normal)
    }
    
}


