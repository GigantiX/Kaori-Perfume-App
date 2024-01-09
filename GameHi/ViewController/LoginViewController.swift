//
//  LoginViewController.swift
//  GameHi
//
//  Created by Donald Soeltanong on 06/01/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var TFemail: UITextField!
    
    @IBOutlet weak var TFpass: UITextField!
    
    var myData: [String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onLogin(_ sender: Any) {
        let username = TFemail.text
        let pass = TFpass.text
        let access = "adminkaori"
        let guestaccess = "guestkaori"
        
        if (username!.isEmpty || pass!.isEmpty){
            popUpMess(title: "Error", mess: "Username & Password Can't Be Empty")
        }
        
        if(username == access && pass == access){
            if let nextView = storyboard?.instantiateViewController(identifier: "loginAdmin"){
                navigationController?.setViewControllers([nextView], animated: true)
            }
        }
        
        if(username == guestaccess && pass == guestaccess){
            if let nextView = storyboard?.instantiateViewController(identifier: "guestView"){
                navigationController?.setViewControllers([nextView], animated: true)
            }
        }
        
        if myData.firstIndex(of: username!) != nil{
            if let nextView = storyboard?.instantiateViewController(identifier: "guestView"){
                navigationController?.setViewControllers([nextView], animated: true)
            }
        }
        popUpMess(title: "Error", mess: "Username or Password is wrong")
        
    }
    func popUpMess(title: String, mess: String){
        let alertController = UIAlertController(title: title, message: mess, preferredStyle: .alert)
        
        let noAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
        
        alertController.addAction(noAction)

        present(alertController, animated: true, completion: nil)
    }
}
