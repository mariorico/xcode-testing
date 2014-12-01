//
//  ViewController.swift
//  testing
//
//  Created by Mario Rico on 26/11/2014.
//  Copyright (c) 2014 Mario Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var cont:Int = 0

    @IBOutlet weak var contador: UIStepper!
    @IBOutlet weak var etiqueta: UILabel?
    @IBOutlet weak var info: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        inicializarStepper()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func inicializarStepper(){
        contador.value = 0
        contador.minimumValue = -50
        contador.maximumValue = 50
        contador.stepValue = 10
        
        let a:String = info.text!
        
        info.text! = "Max: \(Int(contador.maximumValue)) - Min: \(Int(contador.minimumValue)) - Incrementos: \(Int(contador.stepValue))"
        etiqueta?.text = "0"
        etiqueta?.textColor = UIColor.grayColor()
    }
    
    @IBAction func daleCandela(sender: UIStepper) {
        let valueOfStepper = Int(sender.value)
        
        etiqueta?.text = valueOfStepper.description
        
        if (valueOfStepper == 0 ){
            etiqueta?.textColor = UIColor.grayColor()
            
        } else if (valueOfStepper < 0 ){
            etiqueta?.textColor = UIColor.redColor()
            
            
        }else{
            etiqueta?.textColor = UIColor.greenColor()
            
        }
        
        etiqueta?.font = etiqueta?.font.fontWithSize(CGFloat(valueOfStepper + 100))
        
        
    }
    

}

