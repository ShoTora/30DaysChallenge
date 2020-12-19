//
//  ConfirmationViewController.swift
//  30 Days Challenge
//
//  Created by ShoTora on 2020/12/13.
//

import UIKit

class ConfirmationViewController: UIViewController {

    @IBOutlet weak var confirmationLabel: UILabel!
    @IBOutlet weak var daysConfirmationLabel: UILabel!
    
    var conText: String = ""
    var daysConLabel: String = ""
    var dclColor: UIColor = .red
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        confirmationLabel.text = conText
        daysConfirmationLabel.text = daysConLabel
        daysConfirmationLabel.backgroundColor = dclColor
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
