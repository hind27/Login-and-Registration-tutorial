//
//  SignupViewController.swift
//  Login and Registration tutorial
//
//  Created by hind on 7/4/18.
//  Copyright © 2018 hind. All rights reserved.
//

import UIKit

class SignupController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GREEN_THEME
        setupHaveAccountButton()
      setupTextFieldComponents()
        // setupPasswordField()
        //setupConfirmPassField()
        //setupUserField()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    let emailTextField : UITextField = {
        let e = UITextField()
        let attributedPlaceholder = NSAttributedString(string:"Email", attributes : [NSAttributedStringKey.foregroundColor:UIColor.white])
        e.setBottomBorder(backGroundColor: GREEN_THEME, borderColor: .white) // line under email
        e.attributedPlaceholder = attributedPlaceholder
        e.backgroundColor = GREEN_THEME
        return e
    }()
    let UserTextField : UITextField = {
        let y = UITextField()
        let attributedPlaceholder = NSAttributedString(string:"User", attributes : [NSAttributedStringKey.foregroundColor:UIColor.white])
        y.setBottomBorder(backGroundColor: GREEN_THEME, borderColor: .white) // line under email
        y.attributedPlaceholder = attributedPlaceholder
        y.backgroundColor = GREEN_THEME
        return y
    }()
   let passwordTextField :UITextField = {
        let P = UITextField()
        let attributedPlaceholder = NSAttributedString(string:"Password", attributes : [NSAttributedStringKey.foregroundColor:UIColor.white])
        P.setBottomBorder(backGroundColor: GREEN_THEME, borderColor: .white)
        P.textColor = .white
        P.isSecureTextEntry = true
        P.attributedPlaceholder = attributedPlaceholder
        P.backgroundColor = GREEN_THEME
        return P
    }()
     let CpasswordTextField :UITextField = {
        let cp = UITextField()
        let attributedPlaceholder = NSAttributedString(string:"confirm Password", attributes : [NSAttributedStringKey.foregroundColor:UIColor.white])
        cp.setBottomBorder(backGroundColor: GREEN_THEME, borderColor: .white)
        cp.textColor = .white
        cp.isSecureTextEntry = true
        cp.attributedPlaceholder = attributedPlaceholder
        cp.backgroundColor = GREEN_THEME
        return cp
    }()
    let haveAccountButton: UIButton = {
        let h = UIButton(type: .system)
        let color = UIColor.rgb(r: 89, g: 156, b: 120)
        let font = UIFont.systemFont(ofSize: 16)
        let attributedTitle = NSMutableAttributedString(string:
            "I have an account ", attributes: [NSAttributedStringKey.foregroundColor: color ,NSAttributedStringKey.font : font])
        attributedTitle.append(NSAttributedString(string:"Sign in" ,attributes:
            [NSAttributedStringKey.foregroundColor: UIColor.white,
             NSAttributedStringKey.font: font]))
        h.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        h.setAttributedTitle(attributedTitle, for: .normal)
        return h
    }()
    
    @objc func signInAction()
    {
         navigationController?.popViewController(animated: true)
    }
    fileprivate func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor,
                                  bottomPad: 8, left: view.leftAnchor, leftPad: 12, right: view.rightAnchor,
                                  rightPad: 0, height: 20, width: 0)
    }
    fileprivate func setupTextFieldComponents() {
        setupEmailField()
       
       // setupPasswordField()
        setupUserField()
        
    }
    fileprivate func setupEmailField() {
        view.addSubview(emailTextField)
        
        emailTextField.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0,
                               left: view.leftAnchor, leftPad: 24, right: view.rightAnchor,
                               rightPad: 24, height: 30, width: 0)
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    fileprivate func setupUserField() {
        view.addSubview(UserTextField)
        
        UserTextField.anchors(top: emailTextField.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0,
                               left: emailTextField.leftAnchor, leftPad: 0, right: emailTextField.rightAnchor,
                               rightPad: 0, height: 30, width: 0)
        
    }
    
    fileprivate func setupPasswordField() {
        view.addSubview(passwordTextField)
        
        passwordTextField.anchors(top: UserTextField.bottomAnchor, topPad: 8, bottom: nil,
                                  bottomPad: 0, left: UserTextField.leftAnchor, leftPad: 0,
                                  right: UserTextField.rightAnchor, rightPad: 0, height: 10, width: 0)
    }
    fileprivate func setupConfirmPassField() {
        view.addSubview(CpasswordTextField)
        
        CpasswordTextField.anchors(top: passwordTextField.bottomAnchor, topPad: 8, bottom: nil,
                                  bottomPad: 0, left: passwordTextField.leftAnchor, leftPad: 0,
                                  right: passwordTextField.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
 
}

