//
//  PostViewController.swift
//  navigation_Timur_Miskurov_Ios_Cp4
//
//  Created by Miskurov Timur on 17.05.2023.
//

import UIKit

class PostViewController: UIViewController {
    var postName: String = ""
    lazy var barButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(infoRightButtonTapped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = postName
        navigationItem.rightBarButtonItem = barButton
    }
    @objc private func infoRightButtonTapped() {
            let infoViewController = InfoViewController()
            present(infoViewController,animated: true)
        }
    
}
