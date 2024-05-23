//
//  CalculatorViewController.swift
//  Bill Splitwise
//
//  Created by Ayush Rajpal on 23/05/24.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var ZeroPerCButton: UIButton!
    @IBOutlet weak var TenPerCButton: UIButton!
    @IBOutlet weak var TwentyPerCButton: UIButton!
    @IBOutlet weak var SplitAmoungPeopleLable: UILabel!
    @IBOutlet weak var Bill_InputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var splitBrain = SplitBrain()

    // TipPerC is initilised :)
    @IBAction func TipPerCisSelected(_ sender: UIButton) {
        ZeroPerCButton.isSelected = false
        TenPerCButton.isSelected = false
        TwentyPerCButton.isSelected = false
        sender.isSelected = true
        if sender == ZeroPerCButton{
            splitBrain.TipPerC = 0
        }
        else if sender == TenPerCButton{
            splitBrain.TipPerC = 10
        }
        else{
            splitBrain.TipPerC = 20
        }
    }
    // NumberOfPeople is initilised :)
    @IBAction func numberOfPersonChanged(_ sender: UIStepper) {
        SplitAmoungPeopleLable.text = "\(Int(sender.value))"
        splitBrain.NumberOfPeople = Int(sender.value)
    }
    
    // Now the result page is poped up to the screen :)
    @IBAction func CalculateGotPressed(_ sender: UIButton) {
        if Bill_InputTextField.text != "" {
            splitBrain.BillAmount = Bill_InputTextField.text!
        }
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // Now the resultView page is prepared for the display :)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.ResultTipPerC = "\(splitBrain.TipPerC) %"
            destinationVC.ResultBillAmount = splitBrain.getBill()
            destinationVC.ResultNumberOfPeople = splitBrain.NumberOfPeople
            
        }
    }
}
