//
//  ThirdScreen.swift
//  UIKitFirstLesson
//
//  Created by Emmanuel Donkor on 10/02/2023.
//

import UIKit

class ThirdScreen: UIViewController {

    let homeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        setUpButton()
        title = "Third Screen"
        navigationController?.navigationBar.prefersLargeTitles = true

        // Do any additional setup after loading the view.
    }
    
    func setUpButton() {
        view.addSubview(homeButton)
        
        homeButton.configuration = .filled()
        homeButton.configuration?.title = "Tap Me"
        homeButton.configuration?.baseBackgroundColor = .green
        
        homeButton.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            homeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            homeButton.widthAnchor.constraint(equalToConstant: 250),
            homeButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goToNext() {
        let nextScreen = FourthScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
