//
//  ProfileViewController.swift
//  navigation_Timur_Miskurov_Ios_Cp4
//
//  Created by Miskurov Timur on 17.05.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let headerView = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Profile"
        headerView.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(headerView)
                
                NSLayoutConstraint.activate([
                    headerView.heightAnchor.constraint(equalToConstant: 220),
                    headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                    headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                ])
}
    
}



