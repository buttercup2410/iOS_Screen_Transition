//
//  DemoVCViewController.swift
//  Assignment03
//
//  Created by Nishi Mewada on 29/01/24.
//

import UIKit

class DemoVC: UIViewController {
    
    var name:String?
    var demoArray: [String]?
    var array = ["","a1","a2","a3","a4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var eduLabel: UILabel!
    
    @IBOutlet weak var marLabel: UILabel!
    
    @IBOutlet weak var livLabel: UILabel!
    
    @IBOutlet weak var incomeLabel: UILabel!

    @IBAction func myUnwindFunction(unwindSegue: UIStoryboardUnwindSegueSource){
        if unwindSegue.source is SelectEdVC{
            if self.name != nil{
                eduLabel.text = name!
                array[1] = name!
            }
        }
        else if unwindSegue.source is SelectMaVC{
            if self.name != nil{
                marLabel.text = name!
                array[2] = name!
            }
        }
        else if unwindSegue.source is SelectLiVC{
            if self.name != nil{
                livLabel.text = name!
                array[3] = name!
            }
        }
        else if unwindSegue.source is SelectInVC{
            if self.name != nil{
                incomeLabel.text = name!
                array[4] = name!
            }
        }
    }
//    @IBAction func unwindToMainMenu(sender: UIStoryboardSegue)
//    {
//        let sourceViewController = sender.source
//        // Pull any data from the view controller which initiated the unwind segue.
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("preparing for Segue")
       
        if segue.identifier == "SegueToProfile7"{
            if eduLabel.text == "NA" || marLabel.text == "NA" || livLabel.text == "NA" || incomeLabel.text == "NA"
            {
                print("Came into the Alert")
                let alertController = UIAlertController(
                    title: "Error", message: "Please enter data", preferredStyle: UIAlertController.Style.alert)
                let cancelAction = UIAlertAction(
                    title:"Okay", style: UIAlertAction.Style.destructive)
                alertController.addAction(cancelAction)
                
                self.present(alertController, animated: true)
            }
            else{
                array.append(self.demoArray![1])
                array.append(self.demoArray![2])
                array.append(self.demoArray![3])
                let profileVC = segue.destination as! ProfileVC
                profileVC.user = array
            }
        }
    }
}
