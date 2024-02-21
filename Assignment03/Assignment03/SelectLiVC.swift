//
//  SelectLiVC.swift
//  Assignment03
//
//  Created by Nishi Mewada on 01/02/24.
//

import UIKit

class SelectLiVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelLiVC(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        func sendData(_ Message: String){
            let demoVC = segue.destination as! DemoVC
            demoVC.name = Message
        }
        if segue.identifier == ("100"){
            print("triggered goLitoDemo")
            sendData("Homeowner")
        }
        else if segue.identifier == ("200"){
            sendData("Renter")
        }
        else if segue.identifier == ("300"){
            sendData("Lease")
        }
        else if segue.identifier == ("400"){
            sendData("Other")
        }
        else if segue.identifier == ("500"){
            sendData("Prefer not to say")
        }
    }
}
