//
//  ViewController.swift
//  Prime Number Check
//
//  Created by D7702_10 on 2018. 3. 29..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var rtxt: UILabel!
    
    @IBAction func chk(_ sender: Any) {
        var number = Int(txt.text!)
        var isPrime = true
        
        if number == 1 {
            isPrime = false
        }
        
        if number != 1 && number != 2 {
            
            for i in 2 ..< number! {
                if number! % i == 0 {
                    isPrime = false
                }
            }
        }
        if isPrime == true {
            rtxt.text = "Prime Number"
        }
        else{
            rtxt.text = "Not Prime Number"
        }

        
    }
    @IBAction func rst(_ sender: Any) {
        txt.text = ""
        rtxt.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txt.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        view.endEditing(false)
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(false)
    }


}

