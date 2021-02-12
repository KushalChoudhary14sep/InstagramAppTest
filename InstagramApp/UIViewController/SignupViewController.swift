//
//  SignupViewController.swift
//  InstagramApp
//
//  Created by Craterzone on 12/02/21.
//

import UIKit

class SignupViewController: UIViewController {
   
    @IBOutlet weak var LanguageSelectButton: UIButton!
    
    @IBOutlet weak var InstagramLogoImage: UIImageView!
    
    @IBOutlet weak var LoginFacebookButton: UIButton!
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    @IBOutlet weak var HaveAccountButton: UIButton!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LanguageSelectButton.setTitle("English (United Kingdom)", for: .normal)
        LanguageSelectButton.setTitleColor(.black, for: .normal)
        LanguageSelectButton.setImage( UIImage(named: "down_arrow"), for: .normal)
        
        InstagramLogoImage.image = UIImage(named: "InstagramLogo")
        
        LoginFacebookButton.layer.cornerRadius = 5
        LoginFacebookButton.backgroundColor = .blue
        LoginFacebookButton.setTitle("Log In with Facebook ", for: .normal)
        LoginFacebookButton.setTitleColor(.white, for: .normal)
        LoginFacebookButton.titleLabel?.font = UIFont.systemFont(ofSize: 16.0, weight: .semibold)
        LoginFacebookButton.setImage( UIImage(named: "fbLogo-1"), for: .normal)
        
        SignUpButton.backgroundColor = .none
        SignUpButton.setTitle("Sign Up with Email or Phone Number", for: .normal)
        SignUpButton.setTitleColor(.systemBlue, for: .normal)
        SignUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 15.0, weight: .semibold)

        HaveAccountButton.backgroundColor = .none
        HaveAccountButton.setTitle("Already have an account?", for: .normal)
        HaveAccountButton.setTitleColor(.darkGray, for: .normal)
        HaveAccountButton.titleLabel?.font = UIFont.systemFont(ofSize: 15.0, weight: .regular)
        
        LoginButton.backgroundColor = .none
        LoginButton.setTitle("Log in.", for: .normal)
        LoginButton.setTitleColor(.blue, for: .normal)
        LoginButton.titleLabel?.font = UIFont.systemFont(ofSize: 15.0, weight: .semibold)


        
    }
    

}
