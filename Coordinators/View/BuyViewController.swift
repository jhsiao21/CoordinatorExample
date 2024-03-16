//
//  BuyViewController.swift
//  Coordinators
//
//  Created by LoganMacMini on 2024/3/16.
//

import UIKit

class BuyViewController: UIViewController {

    weak var coordinator: MainCoordinator?
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Buy"
        view.backgroundColor = .systemBackground
    }
}
