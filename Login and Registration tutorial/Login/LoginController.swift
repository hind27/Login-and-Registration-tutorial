//
//  ViewController.swift
//  Login and Registration tutorial
//
//  Created by hind on 7/4/18.
//  Copyright © 2018 hind. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
 
    let emailTextField : UITextField = {
        let e = UITextField()
         let attributedPlaceholder = NSAttributedString(string:"Email", attributes : [NSAttributedStringKey.foregroundColor:UIColor.white])
         e.setBottomBorder(backGroundColor: GREEN_THEME, borderColor: .white) // line under email
        e.attributedPlaceholder = attributedPlaceholder
        e.textColor = .white
        e.backgroundColor = GREEN_THEME
        return e
        }()
    let passwordTextField :UITextField = {
        let P = UITextField()
        let attributedPlaceholder = NSAttributedString(string:"Password", attributes : [NSAttributedStringKey.foregroundColor:UIColor.white])
        P.setBottomBorder(backGroundColor: GREEN_THEME, borderColor: .white)
        P.attributedPlaceholder = attributedPlaceholder
        P.textColor = .white
        P.isSecureTextEntry = true
        P.backgroundColor = GREEN_THEME
        return P
    }()
    let loginButton : UIButton = {
      let l = UIButton(type: .system)
        l.setTitleColor(.white, for: .normal)
        l.setTitle("Log In", for: .normal)
        l.layer.cornerRadius = 10
        l.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        return l
    }()
    
    let logo: UIImageView = {
        let l = UIImageView()
        l.image = UIImage(named:"icons1")
        l.contentMode = .scaleAspectFill
        l.layer.masksToBounds = true
        l.layer.cornerRadius = 20
        return l
    }()
    
    let haveAccountButton: UIButton = {
        let h = UIButton(type: .system)
        let color = UIColor.rgb(r: 89, g: 156, b: 120)
        let font = UIFont.systemFont(ofSize: 16)
        let attributedTitle = NSMutableAttributedString(string:
        "Don't have an account? ", attributes: [NSAttributedStringKey.foregroundColor:
            
            color ,NSAttributedStringKey.font : font])
        attributedTitle.append(NSAttributedString(string:"Sign UP" ,attributes:
            [NSAttributedStringKey.foregroundColor: UIColor.white,
             NSAttributedStringKey.font: font]))
        h.addTarget(self, action: #selector(signupAction), for: .touchUpInside)
        h.setAttributedTitle(attributedTitle, for: .normal)
        return h
        }()
    
    let forgotPassword: UIButton = {
        let f = UIButton(type: .system)
        f.setTitleColor(.white, for: .normal)       
        f.setTitle("Forgot Password?", for: .normal)
        f.backgroundColor = GREEN_THEME
        return f
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // nev is hidden
         navigationController?.isNavigationBarHidden = true
        view.backgroundColor = GREEN_THEME
        setupAddLogo()
        setupTextFieldComponents()
        setupLoginButton()
        setupHaveAccountButton()
        setupForgotPsswdButton()
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    // navigation signup 
    @objc func signupAction() {
        let signupcontroller = SignupController()
        navigationController?.pushViewController(signupcontroller, animated: true)
    }
    
    fileprivate func setupTextFieldComponents() {
        setupEmailField()
        setupPasswordField()
        
    }
    fileprivate func setupEmailField() {
        view.addSubview(emailTextField)
        
        emailTextField.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0,
                               left: view.leftAnchor, leftPad: 24, right: view.rightAnchor,
                               rightPad: 24, height: 30, width: 0)
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    fileprivate func setupPasswordField() {
        view.addSubview(passwordTextField)
        
        passwordTextField.anchors(top: emailTextField.bottomAnchor, topPad: 8, bottom: nil,
                                  bottomPad: 0, left: emailTextField.leftAnchor, leftPad: 0,
                                  right: emailTextField.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    fileprivate func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.anchors(top: passwordTextField.bottomAnchor, topPad: 12, bottom: nil,
                            bottomPad: 0, left: passwordTextField.leftAnchor, leftPad: 0,
                            right: passwordTextField.rightAnchor, rightPad: 0, height: 50, width: 0)
    }
    fileprivate func setupAddLogo() {
        view.addSubview(logo)
        logo.anchors(top: view.safeAreaLayoutGuide.topAnchor, topPad: 64, bottom: nil,
                     bottomPad: 0, left: nil, leftPad: 0, right: nil, rightPad: 0,
                     height: 150, width: 150)
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    fileprivate func setupForgotPsswdButton() {
        view.addSubview(forgotPassword)
        
        forgotPassword.anchors(top: loginButton.bottomAnchor, topPad: 8, bottom: nil,
                               bottomPad: 0, left: loginButton.leftAnchor, leftPad: 0,
                               right: loginButton.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    fileprivate func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor,
                                  bottomPad: 8, left: view.leftAnchor, leftPad: 12, right: view.rightAnchor,
                                  rightPad: 12, height: 30, width: 0)
    }
}

