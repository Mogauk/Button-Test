//
//  ViewController.swift
//  Button Test
//
//  Created by Alexey on 4/17/22.
//

import UIKit

class ViewController: UIViewController {

    let purpleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.purple
        return button
    }()
    
    let greenButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.green
        return button
    }()
    
    let orangeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.orange
        return button
    }()
    
    let blueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.blue
        return button
    }()
    
    let redButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.red
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
       
        view.addSubview(purpleButton)
        view.addSubview(greenButton)
        view.addSubview(orangeButton)
        view.addSubview(blueButton)
        view.addSubview(redButton)
        
        purpleButton.setTitle("🍩", for: .normal)
        purpleButton.titleLabel?.font = .systemFont(ofSize: 40)
        purpleButton.layer.cornerRadius = 20
        purpleButton.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        
        greenButton.setTitle("🍫", for: .normal)
        greenButton.titleLabel?.font = .systemFont(ofSize: 40)
        greenButton.layer.cornerRadius = 20
        greenButton.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        
        orangeButton.setTitle("🍦", for: .normal)
        orangeButton.titleLabel?.font = .systemFont(ofSize: 40)
        orangeButton.layer.cornerRadius = 20
        orangeButton.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        
        blueButton.setTitle("🍪", for: .normal)
        blueButton.titleLabel?.font = .systemFont(ofSize: 40)
        blueButton.layer.cornerRadius = 20
        blueButton.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        
        redButton.setTitle("🍯", for: .normal)
        redButton.titleLabel?.font = .systemFont(ofSize: 40)
        redButton.layer.cornerRadius = 20
        redButton.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        
        createPurpleButtonConstraint()
        createGreenButtonConstraint()
        createOrangeButtonConstraint()
        createBlueButtonConstraint()
        createRedButtonConstraint()
        
    }

    func createPurpleButtonConstraint() {
        purpleButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        purpleButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        purpleButton.rightAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func createGreenButtonConstraint() {
        greenButton.topAnchor.constraint(equalTo: purpleButton.bottomAnchor, constant: 20).isActive = true
        greenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greenButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
    }
    
    func createOrangeButtonConstraint() {
        orangeButton.topAnchor.constraint(equalTo: greenButton.bottomAnchor, constant: 20).isActive = true
        orangeButton.leftAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        orangeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }
    
    func createBlueButtonConstraint() {
        blueButton.topAnchor.constraint(equalTo: orangeButton.bottomAnchor, constant: 20).isActive = true
        blueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
    }
    
    func createRedButtonConstraint() {
        redButton.topAnchor.constraint(equalTo: blueButton.bottomAnchor, constant: 20).isActive = true
        redButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        redButton.rightAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func showMessage(sender: UIButton) {
        var emojiDict = [
            "🍩": "Donut",
            "🍫": "Chocolate",
            "🍦": "Icecream",
            "🍪": "Cookie",
            "🍯": "Honey"
        ]
        
        let selectedButton = sender
        if let wordToLookUp = selectedButton.titleLabel?.text {
            let meaning = emojiDict[wordToLookUp]
            let alertControler = UIAlertController(title: "MMM...", message: meaning, preferredStyle: UIAlertController.Style.alert)
            let messageAttributes = [NSAttributedString.Key.font: UIFont(name: "Helvetica", size: 20)!, NSAttributedString.Key.foregroundColor: UIColor.orange]
            let messageString = NSAttributedString(string: meaning!, attributes: messageAttributes)
            alertControler.setValue(messageString, forKey: "attributedMessage")
            alertControler.addAction(UIAlertAction(title: "Let's eat", style: UIAlertAction.Style.default, handler: nil))
            present(alertControler, animated: true, completion: nil)
        }
    }
    
}

