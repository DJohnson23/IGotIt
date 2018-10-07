//
//  RegisterViewController.swift
//  IGotIt
//
//  Created by Gregory Johnson on 10/6/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController
{
    @IBOutlet weak var firstName_tf: UITextField!
    @IBOutlet weak var lastName_tf: UITextField!
    @IBOutlet weak var email_tf: UITextField!
    @IBOutlet weak var password_tf: UITextField!
    @IBOutlet weak var confirmPass_tf: UITextField!
    @IBOutlet weak var passwordMatch_lbl: UILabel!
    @IBOutlet weak var signIn_btn: UIButton!
    
    var firstName : String!
    var lastName : String!
    var email : String!
    var password : String!
    var confirmPass : String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        firstName = ""
        lastName = ""
        email = ""
        password = ""
        confirmPass = ""
        
        firstName_tf.placeholder = "First Name"
        lastName_tf.placeholder = "Last Name"
        email_tf.placeholder = "Email"
        password_tf.placeholder = "Password"
        confirmPass_tf.placeholder = "Confirm Password"
        
        password_tf.isSecureTextEntry = true
        confirmPass_tf.isSecureTextEntry = true
        
        passwordMatch_lbl.text = ""
        
        signIn_btn.setTitle("Sign In", for: .normal)
    }
    
    @IBAction func confirmPassChanged(_ sender: UITextField)
    {
        password = password_tf.text
        confirmPass = confirmPass_tf.text
        
        if(password == "" || confirmPass == "")
        {
            passwordMatch_lbl.text = ""
        }
        else if(password == confirmPass)
        {
            passwordMatch_lbl.textColor = UIColor.green
            passwordMatch_lbl.text = "Passwords match"
        }
        else
        {
            passwordMatch_lbl.textColor = UIColor.red
            passwordMatch_lbl.text = "Passwords do not match"
        }
    }
    
    @IBAction func passwordChanged(_ sender: UITextField)
    {
        password = password_tf.text
        confirmPass = confirmPass_tf.text
        
        if(password == "" || confirmPass == "")
        {
            passwordMatch_lbl.text = ""
        }
        else if(password == confirmPass)
        {
            passwordMatch_lbl.textColor = UIColor.green
            passwordMatch_lbl.text = "Passwords match"
        }
        else
        {
            passwordMatch_lbl.textColor = UIColor.red
            passwordMatch_lbl.text = "Passwords do not match"
        }
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
