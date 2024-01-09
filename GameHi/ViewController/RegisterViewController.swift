//
//  RegisterViewController.swift
//  GameHi
//
//  Created by Donald Soeltanong on 06/01/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var TFemail: UITextField!
    
    @IBOutlet weak var TFpass: UITextField!
    
    @IBOutlet weak var TFconfpass: UITextField!
    
    var user = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onRegister(_ sender: Any) {
        let username = TFemail.text
        let pass = TFpass.text
        let confPass = TFconfpass.text
        
        if (username!.isEmpty || pass!.isEmpty || confPass!.isEmpty){
            popUpMess(title: "Error", mess: "Username & Password Can't Be Empty")
        }
        
        user.append(username!)
        user.append(pass!)
        
        if let nextPage = storyboard?.instantiateViewController(identifier: "loginPage"){
            var loginPage = nextPage as! LoginViewController
            
            loginPage.myData = user
            navigationController?.setViewControllers([loginPage], animated: true)
        }
        
//        if let nextView = storyboard?.instantiateViewController(identifier: "loginPage"){
//            navigationController?.pushViewController(nextView, animated: true)
//        }
        
        
    }
    
    func popUpMess(title: String, mess: String){
        let alertController = UIAlertController(title: title, message: mess, preferredStyle: .alert)
        
        let noAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
        
        alertController.addAction(noAction)

        present(alertController, animated: true, completion: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "loginPage"{
//            if let destinationVC = segue.destination as? LoginViewController{
//                destinationVC.myData = user
//            }
//        }
//    }

}
