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
    @IBOutlet weak var register_btn: UIButton!
    
    var email : String!
    var password : String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        email_tf.frame.size.height = 0.0517 * self.view.frame.size.height
        email_tf.layer.cornerRadius = 15
        email_tf.placeholder = "Email"
        email_tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        email_tf.layer.shadowOffset = CGSize(width: 0, height: 10)
        email_tf.layer.shadowOpacity = 0.15
        email_tf.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        email_tf.borderStyle = UITextField.BorderStyle.none
        email_tf.layer.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1).cgColor
        
        let paddingViewEmail = UIView(frame: CGRect(x: 0, y: 0, width: email_tf.frame.size.width * 0.15, height: email_tf.frame.size.height))
        let userImgView = UIImageView(image: UIImage(named: "Gold User"))
        userImgView.frame.size.height = userImgView.frame.size.height / 2
        userImgView.frame.size.width = userImgView.frame.size.width / 2
        paddingViewEmail.addSubview(userImgView)
        paddingViewEmail.subviews[0].center = CGPoint(x: email_tf.frame.size.width * 0.075, y: paddingViewEmail.frame.size.height * 0.5)
        email_tf.leftView = paddingViewEmail
        email_tf.leftViewMode = UITextField.ViewMode.always
        
        
        password_tf.frame.size.height = 0.0517 * self.view.frame.size.height
        password_tf.layer.cornerRadius = 15
        password_tf.placeholder = "Password"
        password_tf.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        password_tf.layer.shadowOffset = CGSize(width: 0, height: 10)
        password_tf.layer.shadowOpacity = 0.15
        password_tf.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        password_tf.borderStyle = UITextField.BorderStyle.none
        password_tf.layer.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1).cgColor
        
        let paddingViewPassword = UIView(frame: CGRect(x: 0, y: 0, width: password_tf.frame.size.width * 0.15, height: password_tf.frame.size.height))
        let lockImgView = UIImageView(image: UIImage(named: "Gold Lock"))
        lockImgView.frame.size.height = lockImgView.frame.size.height / 2
        lockImgView.frame.size.width = lockImgView.frame.size.width / 2
        paddingViewPassword.addSubview(lockImgView)
        paddingViewPassword.subviews[0].center = CGPoint(x: password_tf.frame.size.width * 0.075, y: paddingViewPassword.frame.size.height * 0.5)
        password_tf.leftView = paddingViewPassword
        password_tf.leftViewMode = UITextField.ViewMode.always
        
        login_btn.layer.cornerRadius = 15
        login_btn.setTitle("Login", for: .normal)
        login_btn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        login_btn.layer.shadowOffset = CGSize(width: 0, height: 10)
        login_btn.layer.shadowOpacity = 0.15
        login_btn.backgroundColor = UIColor(red: 1.05, green: 0.85, blue: -0.38, alpha: 1)
        login_btn.setTitleColor(UIColor(red: 0.31, green: 0.31, blue: 0.31, alpha: 1), for: .normal)
        
        register_btn.layer.cornerRadius = 15
        register_btn.setTitle("Register", for: .normal)
        register_btn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        register_btn.layer.shadowOffset = CGSize(width: 0, height: 10)
        register_btn.layer.shadowOpacity = 0.15
        register_btn.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1)
        register_btn.setTitleColor(UIColor(red: 0.31, green: 0.31, blue: 0.31, alpha: 1), for: .normal)
        
        self.view.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1)
    }
    
    @IBAction func loginPressed(_ sender: UIButton)
    {
        email = email_tf.text
        password = password_tf.text
    }

}
