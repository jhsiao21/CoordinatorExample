//
//  CreateAccountViewController.swift
//  Coordinators
//
//  Created by LoganMacMini on 2024/3/16.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Create Account"
        view.backgroundColor = .systemBackground
    }
}
