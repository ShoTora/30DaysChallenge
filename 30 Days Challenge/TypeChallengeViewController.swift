//
//  TypeChallengeViewController.swift
//  30 Days Challenge
//
//  Created by ShoTora on 2020/12/13.
//

import UIKit

class TypeChallengeViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var challengeTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    var toConVC: String = ""
    var toConVCColor: UIColor = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        challengeTextField.delegate = self
        challengeTextField.clearButtonMode = .always
        challengeTextField.clearButtonMode = .whileEditing
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        challengeTextField.endEditing(true)
        return true
    }
        
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if challengeTextField.text != "" {
            print("OK")
        } else {
            challengeTextField.attributedPlaceholder = NSAttributedString(string: "Type Your Challenge Here", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        }
    }
    

    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?) -> Bool {

        if identifier == "toConfirmationViewController" {
            if challengeTextField.text != "" {
                return true
            }
        }
        return false
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConfirmationViewController" {
            let conVC = segue.destination as! ConfirmationViewController
            conVC.conText = self.challengeTextField.text!
            conVC.daysConLabel = toConVC
            conVC.dclColor = toConVCColor
            
        }
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
