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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // getting back to the initial page :)
    @IBAction func RecalculateGotPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
