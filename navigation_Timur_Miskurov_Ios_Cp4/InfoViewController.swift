//
//  InfoViewController.swift
//  navigation_Timur_Miskurov_Ios_Cp4
//
//  Created by Miskurov Timur on 30.05.2023.
//

import UIKit

class InfoViewController: UIViewController {
    private lazy var alertButton: UIButton = {
        let button = UIButton()
        button.setTitle("show alert", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(runAlert), for: .touchUpInside)
        return button
    }()
        @objc func runAlert() {
                    let alert = UIAlertController(title: "заголовок", message: "сообщение", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Ok", style: .default) {_ in
                        print("Ок")
                    }
                    let okCancel = UIAlertAction(title: "Cancel", style: .default) {_ in
                        print("Cancel")
                    }
                    alert.addAction(okAction)
                    alert.addAction(okCancel)
                    present(alert, animated: true)  // вывод алерта
                }
        
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(alertButton)
        NSLayoutConstraint.activate([
                    alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    alertButton.heightAnchor.constraint(equalToConstant: 50),
                    alertButton.widthAnchor.constraint(equalToConstant: 150)
                ])
    }

}
