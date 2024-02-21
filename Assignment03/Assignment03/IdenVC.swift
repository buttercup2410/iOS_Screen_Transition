//
//  IdenVC.swift
//  Assignment03
//
//  Created by Nishi Mewada on 29/01/24.
//

import UIKit

class IdenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var array = ["","a1","a2","a3"]

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var roleSegment: UISegmentedControl!
    
    @IBAction func nextIden(_ sender: Any) {
        print(nameTextField.text!)
        array[1] = (nameTextField.text!)
        array[2] = (emailTextField.text!)

        print(array)
        if roleSegment.selectedSegmentIndex == 0{
            array[3] = ("Student")
        }
        else if roleSegment.selectedSegmentIndex == 1{
            array[3] = ("Employee")
        }
        else{
            array[3] = ("Other")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("preparing for Segue")

        if nameTextField.text == "" || emailTextField.text == ""
        {
            let alertController = UIAlertController(
                title: "Error", message: "Please enter data", preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(
                title:"Okay", style: UIAlertAction.Style.destructive)
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true)
        }
        else if segue.identifier == "SegueToDemo2"
        {
            let demoVC = segue.destination as! DemoVC
            demoVC.demoArray = array
        }
    }
}
