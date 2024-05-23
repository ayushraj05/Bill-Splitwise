//
//  ResultsViewController.swift
//  Bill Splitwise
//
//  Created by Ayush Rajpal on 23/05/24.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var ResultAmountLable: UILabel!
    @IBOutlet weak var SplitWithPersonLable: UILabel!
    
    var ResultTipPerC = "0 %"
    var ResultBillAmount: Float = 0.0
    var ResultNumberOfPeople: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ResultAmountLable.text = String(format: "%.2f", ResultBillAmount)
        SplitWithPersonLable.text = "Split between \(ResultNumberOfPeople) people, with \(ResultTipPerC) tip."
        
    }
    
    // getting back to the initial page :)
    @IBAction func RecalculateGotPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
