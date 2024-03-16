//
//  ViewController.swift
//  Coordinators
//
//  Created by LoganMacMini on 2024/3/16.
//

import UIKit

class ViewController: UIViewController {

    weak var coordinator: MainCoordinator?
    
    private let buyButton: UIButton = {
        let button = UIButton()
        button.setTitle("buy", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.addTarget(self, action: #selector(buyTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let createAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("create account", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.addTarget(self, action: #selector(createAccount), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(buyButton)
        view.addSubview(createAccountButton)
        
        NSLayoutConstraint.activate([
            buyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buyButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            createAccountButton.topAnchor.constraint(equalTo: buyButton.bottomAnchor, constant: 30),
            createAccountButton.centerXAnchor.constraint(equalTo: buyButton.centerXAnchor),
        ])
    }

    @objc private func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }    
    
    @objc private func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }
}

