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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func TipPerCisSelected(_ sender: UIButton) {
    }
    
    @IBAction func numberOfPersonChanged(_ sender: UIStepper) {
    }
    
}
