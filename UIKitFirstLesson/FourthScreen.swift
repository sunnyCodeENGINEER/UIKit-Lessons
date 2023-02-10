//
//  FourthScreen.swift
//  UIKitFirstLesson
//
//  Created by Emmanuel Donkor on 10/02/2023.
//

import UIKit

class FourthScreen: UIViewController {
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fourth Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBrown

        setUpButton()
        
        // Do any additional setup after loading the view.
    }
    
    func setUpButton() {
        view.addSubview(button)
        button.configuration = .tinted()
        button.configuration?.title = "Go To Home"
        button.configuration?.baseBackgroundColor = .systemTeal
        
        button.addTarget(self, action: #selector(goHome), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func goHome() {
        navigationController?.popToRootViewController(animated: true)
    }
}
