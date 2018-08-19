//
//  PercentageViewController.swift
//  MyCalc
//
//  Created by 北村聡士 on 2018/08/19.
//  Copyright © 2018年 satooshi. All rights reserved.
//

import UIKit

class PercentageViewController: UIViewController {
    var model: DiscountCalculator!

    @IBOutlet weak var percentageField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        tapNumberButton(number: "9")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        tapNumberButton(number: "8")
    }
    
    @IBAction func tap7Button(_ sender: Any) {
        tapNumberButton(number: "7")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        tapNumberButton(number: "6")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        tapNumberButton(number: "5")
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        tapNumberButton(number: "4")
    }
    
    @IBAction func tap3Button(_ sender: Any) {
        tapNumberButton(number: "3")
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        tapNumberButton(number: "2")
    }
    
    @IBAction func tap1Button(_ sender: Any) {
        tapNumberButton(number: "1")
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        tapNumberButton(number: "0")
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        percentageField.text = "0"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController
        viewController.model = model
        if let discountRatio = UInt64(percentageField.text!) {
            model.discountRatio = discountRatio
            viewController.model = model
        }
    }

    // privateにしたい

    func tapNumberButton(number: String) {
        let value = percentageField.text! + number
        
        if let price = UInt64(value) {
            percentageField.text = "\(price)"
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
