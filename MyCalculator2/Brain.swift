//
//  Brain.swift
//  MyCalculator2
//
//  Created by Saniya Khan on 3/11/19.
//  Copyright © 2019 Saniya Khan. All rights reserved.
//

import Foundation

class Brain{
    var display:String;
    var currentNum: Double = 0;
    var previousNum: Double = 0;
    var performingMath = false;
    var operation:String;
    var op1:String;

    
    init(){
        display = "0";
        currentNum = 0;
        previousNum = 0;
        performingMath = false;
        operation = "";
        op1 = "";
    }
    
    func appenDisplay(value:String){
        if performingMath == true
        {
            if value == "." {
                display = "0.";
                
            }
                
            else{
                display = value;
            }
            performingMath = false;
            currentNum = Double(display)!
            return
        }
            
        else{
            if (display == "0" && value != "0"){
                if value == "."{
                    display += value
                    
                }
                else{
                    display = value
                    currentNum = Double(display)!;
                }
                
            }
            else if value == "." && display == "" && display.contains(".") == false{
                display = "0.";
            }
                
            else if value == "."{
                if display.contains(".") == false{
                    performingMath = false;
                    display += value
                    
                    
                }
                else{
                    
                }
            }
                
            else{
                display += value
                performingMath = false;
                currentNum = Double(display)!
                return
            }
        }
        
    }

    
func evaluate(op:String){
       
        op1 = op;
        
        if display != "" && op1 != "C" && op1 != "="{
            previousNum = Double(display)!;
            if op1 == "+/-"{
                display = String(Double(display)! * -1);
                currentNum = Double(display)!;
            }
            if op1 == "%"{
                display = "%";
                
            }
            if op1 == "/"{
                display = "/";
            }
            if op1 == "X"{
                display = "X";
            }
            if op1 == "-"{
                display = "-";
            }
            if op1 == "+"{
                display = "+";
            }
            
            operation = display;
            performingMath = true;
            return
            
        }
            
        else if op1 == "="{
            if operation == "/"{
                if currentNum == 0{
                    display = String("Undefined");
                }
                else{
                    display = String(previousNum/currentNum);
                }
            }
                
            else if operation == "X"{
                display = String(previousNum * currentNum);
            }
            else if operation == "-"{
                display = String(previousNum - currentNum);
            }
            else if operation == "+"{
                display = String(previousNum + currentNum);
            }
            else if operation == "%"{
                display = String(currentNum * 0.01)
                
            }
        }
        
        else if op1 == "C"{
            display = "0";
            currentNum = 0;
            previousNum = 0;
            performingMath = false;
            operation = "";
            op1 = "";
        }
}
    
    }
