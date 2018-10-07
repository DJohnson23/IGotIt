//
//  LoginViewController.swift
//  IGotIt
//
//  Created by Gregory Johnson on 10/6/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{

    @IBOutlet weak var email_tf: UITextField!
    @IBOutlet weak var password_tf: UITextField!
    @IBOutlet weak var login_btn: UIButton!
    @IBOutlet weak var login_lbl: UILabel!
    @IBOutlet weak var register_btn: UIButton!
    
    var email : String!
    var password : String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        email_tf.placeholder = "Email"
        email_tf.layer.cornerRadius = 10
        email_tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        email_tf.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        email_tf.layer.shadowOpacity = 1.0
        
        password_tf.placeholder = "Password"
        password_tf.layer.cornerRadius = 10
        password_tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        password_tf.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        password_tf.layer.shadowOpacity = 1.0
        
        email = ""
        password = ""
        
        login_btn.setTitle("Login", for: .normal)
        login_btn.layer.cornerRadius = 10
        login_btn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        login_btn.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        login_btn.layer.shadowOpacity = 1.0
        
        login_lbl.text = ""
        
        register_btn.setTitle("Register", for: .normal)
    }
    
    @IBAction func loginPressed(_ sender: UIButton)
    {
        email = email_tf.text
        password = password_tf.text
        
        if(email.uppercased() == "IGOT!T@GMAIL.COM" && password == "soccer")
        {
            login_lbl.textColor = UIColor.black
            login_lbl.text = "Successful Login"
        }
        else
        {
            login_lbl.textColor = UIColor.red
            login_lbl.text = "Incorrect email or password"
        }
    }

}
