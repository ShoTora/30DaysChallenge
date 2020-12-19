//
//  DaysOptionsViewController.swift
//  30 Days Challenge
//
//  Created by ShoTora on 2020/12/13.
//

import UIKit

class DaysOptionsViewController: UIViewController {
    
    @IBOutlet weak var sevenDaysButton: UIButton!
    @IBOutlet weak var fourteenDaysButton: UIButton!
    @IBOutlet weak var twentyoneDaysButton: UIButton!
    @IBOutlet weak var thirtyDaysButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        sevenDaysButton.backgroundColor = .green
        fourteenDaysButton.backgroundColor = .blue
        twentyoneDaysButton.backgroundColor = .purple
        thirtyDaysButton.backgroundColor = .orange
    }
    
    @IBAction func sevenDaysButtonPressed(_ sender: Any) {
    }
    @IBAction func fourteenDaysButtonPressed(_ sender: Any) {
    }
    @IBAction func twentyoneDaysButtonPressed(_ sender: Any) {
    }
    @IBAction func thiryDaysButtonPressed(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTCfromSeven" {
            let tcVC = segue.destination as! TypeChallengeViewController
            tcVC.toConVC = "7 Days Challenge"
            tcVC.toConVCColor = .green
        }
        if segue.identifier == "toTCfromFourteen" {
            let tcVC = segue.destination as! TypeChallengeViewController
            tcVC.toConVC = "14 Days Challenge"
            tcVC.toConVCColor = .blue
        }
        if segue.identifier == "toTCfromTwentyone" {
            let tcVC = segue.destination as! TypeChallengeViewController
            tcVC.toConVC = "21 Days Challenge"
            tcVC.toConVCColor = .purple
        }
        if segue.identifier == "toTCfromThirty" {
            let tcVC = segue.destination as! TypeChallengeViewController
            tcVC.toConVC = "30 Days Challenge"
            tcVC.toConVCColor = .orange
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
        */

}
