//
//  FeedViewController.swift
//  navigation_Timur_Miskurov_Ios_Cp4
//
//  Created by Miskurov Timur on 17.05.2023.
//

import UIKit

class FeedViewController: UIViewController {
    private lazy var postButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show Post", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(showPage), for: .touchUpInside)
        return button
        
    }()
    var postName: Post = .init(title: "Мой первый пост")
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.addSubview(postButton)
        setConstraints()
}
    @objc func showPage () {
            let postViewController = PostViewController()
            postViewController.postName = postName.title
            navigationController?.pushViewController(postViewController, animated: true)
        }
    func setConstraints() {
            NSLayoutConstraint.activate([
                postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                postButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                postButton.heightAnchor.constraint(equalToConstant: 50),
                postButton.widthAnchor.constraint(equalToConstant: 150)
            ])
        }
}
