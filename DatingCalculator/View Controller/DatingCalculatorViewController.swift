//
//  DatingCalculatorViewController.swift
//  DatingCalculator
//
//  Created by Omri Horowitz on 2/8/21.
//

import UIKit

class DatingCalculatorViewController: UIViewController {
    
    @IBOutlet weak var datingOutcomeImage: UIImageView!
    
    @IBOutlet weak var datingOutcomeLabel: UILabel!
    
    @IBOutlet weak var timeValueSlider: UISlider!
    
    @IBOutlet weak var moneyValueSlider: UISlider!
    
    @IBOutlet weak var attentionValueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func timeValueChanged(_ sender: Any) {
        calculateDatingOutcome()
    }
    
    @IBAction func moneyValueChanged(_ sender: Any) {
        calculateDatingOutcome()
    }
    
    @IBAction func attentionValueChanged(_ sender: Any) {
        calculateDatingOutcome()
    }
    
    func calculateDatingOutcome() {
        if moneyValueSlider.value > 50.0 && attentionValueSlider.value < 4.0 {
            datingOutcomeImage.image = UIImage(named: "trophyWife")
            datingOutcomeLabel.text = "Trophy Wife: \nYou got the money --- just go for the looks"
        } else if timeValueSlider.value > 5.0 && attentionValueSlider.value > 4.0 {
            datingOutcomeImage.image = UIImage(named: "foreverLove")
            datingOutcomeLabel.text = "Forever Love: \nWell this is gonna last a while..."
        } else {
            datingOutcomeImage.image = UIImage(named: "fling")
            datingOutcomeLabel.text = "Fling: \nMake sure and get tested, stud"
        }
    }
}
