//
//  ViewController.swift
//  tarea4
//
//  Created by LABORATORIO MAC UAM on 26/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.accessibilityIdentifier = "loginLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let userTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "User"
        textField.borderStyle = .roundedRect
        textField.accessibilityIdentifier = "userTextField"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
        

    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.accessibilityIdentifier = "passwordTextField"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
        
        // Botón para iniciar sesión
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.accessibilityIdentifier = "loginButton"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
        // Botón para registrar
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Register", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.accessibilityIdentifier = "registerButton"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
                
        view.addSubview(loginLabel)
        view.addSubview(userTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
                
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    
            userTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 40),
            userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                    
            passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                    
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 100),
                    
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 40),
            registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }


}

