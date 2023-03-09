//
//  FirstScreen.swift
//  UIKitFirstLesson
//
//  Created by Emmanuel Donkor on 10/02/2023.
//

import UIKit

class FirstScreen: UIViewController {
    
    let nextButton = UIButton()
    let button2 = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        setupButton2()
        view.backgroundColor = .systemBackground
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
    }

    func setupButton() {
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "Next"
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    func setupButton2() {
        view.addSubview(button2)
        
        button2.configuration = .tinted()
        button2.configuration?.title = "Tap Me"
        button2.configuration?.baseBackgroundColor = .blue
        
        button2.addTarget(self, action: #selector(tappedMe), for: .touchUpInside)
        
        button2.translatesAutoresizingMaskIntoConstraints = true
        
        NSLayoutConstraint.activate([
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.centerYAnchor.constraint(equalTo: nextButton.centerYAnchor),
            button2.widthAnchor.constraint(equalToConstant: 200),
            button2.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func tappedMe() {
        
    }
}

