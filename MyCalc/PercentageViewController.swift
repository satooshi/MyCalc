//
//  PercentageViewController.swift
//  MyCalc
//
//  Created by 北村聡士 on 2018/08/19.
//  Copyright © 2018年 satooshi. All rights reserved.
//

import UIKit

class PercentageViewController: UIViewController {
    weak var model: DiscountCalculator!

    @IBOutlet weak var percentageField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        percentageField.text = "0"
    }
    
    @IBAction func tapNumberButton(_ sender: UIButton) {
        if let number = sender.currentTitle {
            let value = percentageField.text! + number
            
            if let price = UInt64(value) {
                percentageField.text = "\(price)"
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let discountRate = UInt(percentageField.text!) {
            model.discountRate = discountRate
            if model.isValid() {
                return true
            }
        }
        
        // title: String?, message: String?, preferredStyle: UIAlertControllerStyle
        let alert: UIAlertController = UIAlertController(title: "Invalid data", message: "discount rate must not be greater than 100", preferredStyle: UIAlertControllerStyle.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("OK")
        })
        alert.addAction(defaultAction)

        present(alert, animated: true, completion: nil)
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController
        if let discountRate = UInt(percentageField.text!) {
            model.discountRate = discountRate
            viewController.model = model
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
