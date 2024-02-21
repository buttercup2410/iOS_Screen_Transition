//
//  SelectInVC.swift
//  Assignment03
//
//  Created by Nishi Mewada on 01/02/24.
//

import UIKit

class SelectInVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var slider = 0
    
    @IBOutlet weak var uiSliderLabel: UILabel!
    
    @IBOutlet weak var uiSliderr: UISlider!
    
    @IBAction func cancelClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func uiSlider(_ sender: UISlider) {
        slider = Int(sender.value)
        if slider == 0 || slider == 1{
            uiSliderLabel.text = "0 to <25K$"
        }
        else if slider == 2{
            uiSliderLabel.text = ">25K$ to <50K$"
        }
        else if slider == 3{
            uiSliderLabel.text = ">50K$ to <100K$"
        }
        else if slider == 4{
            uiSliderLabel.text = ">100K$ to <200K$"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        func sendData(_ Message: String){
            let demoVC = segue.destination as! DemoVC
            demoVC.name = Message
        }
        if segue.identifier == ("goIntoDemo"){
            print("triggered goIntoDemo")
            
            if slider == 0 || slider == 1{
                sendData("0 to <25K$")
            }
            else if slider == 2{
                sendData(">25K$ to <50K$")
            }
            else if slider == 3{
                sendData(">50K$ to <100K$")
            }
            else if slider == 4{
                sendData(">100K$ to <200K$")
            }
        }
    }
}
