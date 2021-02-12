//
//  LoginViewController.swift
//  InstagramApp
//
//  Created by Craterzone on 12/02/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var LanguageSelectButton: UIButton!
    @IBOutlet weak var InstagramLogoImage: UIImageView!
    @IBOutlet weak var LoginTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var ForgotLoginButton: UIButton!
    @IBOutlet weak var HelpLoginButton: UIButton!
    @IBOutlet weak var Line1View: UIView!
    @IBOutlet weak var OrLabel: UILabel!
    @IBOutlet weak var Line2View: UIView!
    @IBOutlet weak var LoginFacebookButton: UIButton!
    @IBOutlet weak var NoAccountButton: UIButton!
    @IBOutlet weak var SignUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LanguageSelectButton.setTitle("English (United Kingdom)", for: .normal)
        LanguageSelectButton.setTitleColor(.black, for: .normal)
        LanguageSelectButton.setImage( UIImage(named: "down_arrow"), for: .normal)
        
        InstagramLogoImage.image = UIImage(named: "InstagramLogo")
        
        LoginTextField.placeholder = "Phone number, Email or Username"
        LoginTextField.backgroundColor = .white
        LoginTextField.attributedPlaceholder =  NSAttributedString(string: "Phone number, Email or Username",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        LoginTextField.layer.cornerRadius = 5
        LoginTextField.layer.borderWidth = 1
        LoginTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        PasswordTextField.placeholder = "Password"
        PasswordTextField.backgroundColor = .white
        PasswordTextField.attributedPlaceholder =  NSAttributedString(string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        PasswordTextField.layer.cornerRadius = 5
        PasswordTextField.layer.borderWidth = 1
        PasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        LoginButton.layer.cornerRadius = 5
        LoginButton.backgroundColor = .blue
        LoginButton.setTitle("Log In", for: .normal)
        LoginButton.setTitleColor(.white, for: .normal)
        LoginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16.0, weight: .bold)
        
        ForgotLoginButton.backgroundColor = .none
        ForgotLoginButton.setTitle("Forgotten your Login details? ", for: .normal)
        ForgotLoginButton.setTitleColor(.darkGray, for: .normal)
        ForgotLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: 12.0, weight: .semibold)
        
        HelpLoginButton.backgroundColor = .none
        HelpLoginButton.setTitle("Get help with logging in ", for: .normal)
        HelpLoginButton.setTitleColor(.blue, for: .normal)
        HelpLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        
       Line1View.backgroundColor = .darkGray
        
        OrLabel.font = UIFont(name: OrLabel.font.fontName, size: 18)
        OrLabel.textColor = .black

        Line2View.backgroundColor = .darkGray
        
        LoginFacebookButton.backgroundColor = .none
        LoginFacebookButton.setTitle("Log In with Facebook ", for: .normal)
        LoginFacebookButton.setTitleColor(.systemBlue, for: .normal)
        LoginFacebookButton.titleLabel?.font = UIFont.systemFont(ofSize: 16.0, weight: .semibold)
        LoginFacebookButton.setImage( UIImage(named: "fbLogo-1"), for: .normal)
        
        NoAccountButton.backgroundColor = .none
        NoAccountButton.setTitle("Don't have an account? ", for: .normal)
        NoAccountButton.setTitleColor(.darkGray, for: .normal)
        NoAccountButton.titleLabel?.font = UIFont.systemFont(ofSize: 16.0, weight: .regular)
        
        
        SignUpButton.backgroundColor = .none
        SignUpButton.setTitle("Sign up", for: .normal)
        SignUpButton.setTitleColor(.blue, for: .normal)
        SignUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 16.0, weight: .bold)
        }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let Email = LoginTextField.text else {return}
        guard let Password = PasswordTextField.text else {return}
        if Email == "kushal14sep@gmail.com" && Password == "Lolopolo@1" {
            let homePVC = RootPageViewController()
            homePVC.modalPresentationStyle = .fullScreen
            self.present(homePVC, animated: true, completion:  nil)
        }else{
            //show alert on wrong user email or password
            let alertController = UIAlertController(title: "Forgot password?", message: "You can log in with your linked facebook account.", preferredStyle: UIAlertController.Style.alert)
            //action for default button
            let action1 = UIAlertAction(title: "Use Facebook", style: .default) { (action:UIAlertAction) in
                //print("You've pressed default");
            }
            //action for cancel button
            let action2 = UIAlertAction(title: "Try Again", style: .cancel) { (action:UIAlertAction) in
                //print("You've pressed cancel");
            }
    }
    
}


}
