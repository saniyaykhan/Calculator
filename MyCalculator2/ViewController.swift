//
//  ViewController.swift
//  MyCalculator2
//
//  Created by Saniya Khan on 3/11/19.
//  Copyright © 2019 Saniya Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back2.png")!)
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    var calcBrain: Brain = Brain();
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var display: UILabel!
    
    @IBAction func btnClick(_ sender: UIButton) {
        if let btnText = sender.titleLabel?.text{
            calcBrain.evaluate(op:btnText);
            display.text = calcBrain.display;
            
        }
        

    }
    
    
    @IBAction func btnNumber(_ sender: UIButton) {
        if calcBrain.performingMath == false{
        if let btnText = sender.titleLabel?.text{
            calcBrain.appenDisplay(value:btnText);
            display.text = calcBrain.display;
            
            }
           return
        }
            
        else{
            
           if let btnText = sender.titleLabel?.text{
                calcBrain.display = "";
                calcBrain.appenDisplay(value:btnText);
                display.text = calcBrain.display;
            }
            return
        }
    
    }
}
