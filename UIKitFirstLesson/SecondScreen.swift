//
//  SecondScreen.swift
//  UIKitFirstLesson
//
//  Created by Emmanuel Donkor on 10/02/2023.
//

import UIKit

class SecondScreen: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second Screen"
        setUpBotton()
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemMint

        
        // Do any additional setup after loading the view.
    }
    
    func setUpBotton() {
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.title = "Next"
        nextButton.configuration?.baseBackgroundColor = .systemPink
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goToNextScreen() {
        let nextScreen = ThirdScreen()
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
