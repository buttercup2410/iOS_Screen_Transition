//
//  SelectEdVC.swift
//  Assignment03
//
//  Created by Nishi Mewada on 29/01/24.
//

import UIKit

class SelectEdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var BHS: UIButton!
    
    @IBOutlet weak var HS: UIButton!
    
    @IBAction func cancelEdVC(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            func test(_ Message:String)
            {
                let demoVC = segue.destination as! DemoVC
                demoVC.name = Message
            }
            if segue.identifier == "1"{
                test("Below High School")
            }
            else if segue.identifier == "2"
            {
                test("High School")
            }
            else if segue.identifier == "3"
            {
                test("Bachelor's Degree")
            }
            else if segue.identifier == "4"
            {
                test("Master's Degree")
            }
            else if segue.identifier == "5"
            {
                test("Ph.D. or Higher")
            }
            else if segue.identifier == "6"
            {
                test("Trade School")
            }
            else if segue.identifier == "7"
            {
                test("Prefer Not to say")
            }
    }
}
