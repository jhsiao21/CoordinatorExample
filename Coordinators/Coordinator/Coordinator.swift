//
//  Coordinator.swift
//  Coordinators
//
//  Created by LoganMacMini on 2024/3/16.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set}
    var navigationController: UINavigationController { get set }
    
    func start()
}
