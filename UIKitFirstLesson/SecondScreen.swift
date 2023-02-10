//
//  SecondScreen.swift
//  UIKitFirstLesson
//
//  Created by Emmanuel Donkor on 10/02/2023.
//

import UIKit

class SecondScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemMint

        // Do any additional setup after loading the view.
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
