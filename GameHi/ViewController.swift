//
//  ViewController.swift
//  GameHi
//
//  Created by prk on 12/4/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onGuest(_ sender: Any) {
        if let nextView = storyboard?.instantiateViewController(identifier: "loginPage"){
            navigationController?.pushViewController(nextView, animated: true)
        }
            
    }
    
    @IBAction func onAdmin(_ sender: Any) {
        if let nextView = storyboard?.instantiateViewController(identifier: "registerPage"){
            navigationController?.pushViewController(nextView, animated: true)
        }
    }
    
}

