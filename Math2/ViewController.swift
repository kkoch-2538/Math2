//
//  ViewController.swift
//  Math2
//
//  Created by 吉村花菜 on 2024/04/20.
//

import UIKit

class ViewController: UIViewController {
    var number: Int!
    var number1: Int!
    var number2: Int!
    var number3: Int!
    
    var num1: String!
    var num2: String!
    var num3: String!

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
        based()
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        super.viewDidLoad()
        
    }
    
    @IBAction func backhomeButton(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButton(){
        
        //Button4.setTitle("0", for: .normal)
        //Button6.setTitle("0", for: .normal)
        //Button8.setTitle("0", for: .normal)
        //Button5.setTitle("?", for: .normal)
        //Button7.setTitle("?", for: .normal)
        
        set(button: Button4, str: "0")
        set(button: Button6, str: "0")
        set(button: Button8, str: "0")
        set(button: Button5, str: "?")
        set(button: Button7, str: "?")
        
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
        print(select)
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
            set(button: Button5, str: "+")
        }else if(select == 2){
            set(button: Button7, str: "+")
            
        }
    }
    
    @IBAction func minus(){
        if(select == 1){
            set(button: Button5, str: "-")
        }else if(select == 2){
            set(button: Button7, str: "-")
        }
    }
    @IBAction func times(){
        if(select == 1){
            set(button: Button5, str: "×")
        }else if(select == 2){
            set(button: Button7, str: "×")
        }
    }
    @IBAction func division(){
        if(select == 1){
            set(button: Button5, str: "÷")
        }else if(select == 2){
            set(button: Button7, str: "÷")
        }
    }
    
    
    
    @IBAction func numberCard1(){
        if(select == 3){
            set(button: Button4, str: self.num1)
        }else if(select == 4){
            set(button: Button6, str: self.num1)
        }else if(select == 5){
            set(button: Button8, str: self.num1)
        }
    }
    
    @IBAction func numberCard2(){
        if(select == 3){
            set(button: Button4, str: self.num2)
        }else if(select == 4){
            set(button: Button6, str: self.num2)
        }else if(select == 5){
            set(button: Button8, str: self.num2)
        }
    }
    
    @IBAction func numberCard3(){
        if(select == 3){
            set(button: Button4, str: self.num3)
        }else if(select == 4){
            set(button: Button6, str: self.num3)
        }else if(select == 5){
            set(button: Button8, str: self.num3)
        }
    }
    
    func based(){
        number = Int.random(in: 1...50)
        number1 = Int.random(in: 1...9)
        number2 = Int.random(in: 1...9)
        number3 = Int.random(in: 1...9)
        
        num1 = String(number1)
        num2 = String(number2)
        num3 = String(number3)

        
        label.text = String(number)
        set(button: Button1, str: self.num1)
        set(button: Button2, str: self.num2)
        set(button: Button3, str: self.num3)
        
        
    }
    
    func set(button: UIButton,str: String) {
        button.configurationUpdateHandler = { button in
            var config = button.configuration
            config?.title = str
            config?.attributedTitle?.font = UIFont.systemFont(ofSize: 43)
            button.configuration = config
        }
    }
}


