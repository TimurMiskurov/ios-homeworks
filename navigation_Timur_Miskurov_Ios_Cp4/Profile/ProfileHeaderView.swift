//
//  ProfileHeaderView.swift
//  navigation_Timur_Miskurov_Ios_Cp4
//
//  Created by Miskurov Timur on 06.06.2023.
//

import UIKit


class ProfileHeaderView: UIView {
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Hasbulla"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let avatarImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Hasbulla 3 169"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 60
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Waiting for UFC contract"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let textField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 12
        textField.minimumFontSize = 15
        textField.layer.cornerRadius = 12
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1.0
        textField.placeholder = "Статус"
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    lazy var statusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show status", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4.0
        button.layer.shadowOffset = .init(width: 4.0, height: 4.0)
        button.layer.shadowRadius = 4.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(btnTap), for: .touchUpInside)
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(nameLabel)
        addSubview(avatarImageView)
        addSubview(statusLabel)
        addSubview(statusButton)
        addSubview(textField)
        
        
        NSLayoutConstraint.activate([
            
            
            textField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 15),
            textField.widthAnchor.constraint(equalToConstant: 210),
            textField.heightAnchor.constraint(equalToConstant: 50),
            textField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -16),
            
            
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 120),
            avatarImageView.heightAnchor.constraint(equalToConstant: 120),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor,constant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            nameLabel.widthAnchor.constraint(equalToConstant: 190),
            
            statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            statusLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            statusLabel.widthAnchor.constraint(equalToConstant: 170),
            
            statusButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 15),
            statusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            statusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusButton.heightAnchor.constraint(equalToConstant: 50),
            statusButton.bottomAnchor.constraint(equalTo: bottomAnchor )
            
            
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func btnTap() {
        print( textField.text ?? "Напишите статус")
        
    }
    
}
