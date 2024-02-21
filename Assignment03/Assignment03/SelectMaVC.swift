//
//  SelectMaVC.swift
//  Assignment03
//
//  Created by Nishi Mewada on 01/02/24.
//

import UIKit

class SelectMaVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var maritalSegment: UISegmentedControl!
    
    @IBAction func cancelMaVC(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        func sendData(_ Message: String){
            let demoVC = segue.destination as! DemoVC
            demoVC.name = Message
        }
        if segue.identifier == "goMatoDemo" {
            print("triggered goMatoDemo")
            
            if maritalSegment.selectedSegmentIndex == 0 {
                sendData("Not Married")
            }
            else if maritalSegment.selectedSegmentIndex == 1{
                sendData("Married")
            }
            else if maritalSegment.selectedSegmentIndex == 2{
                sendData("Prefer not to say")
            }
        }
    }
}
