//
//  NotificationsController.swift
//  Twitter Clone MVVM
//
//  Created by Andrey on 20.05.2022.
//

import UIKit

class NotificationsController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}

//MARK: - Helpers

extension NotificationsController {
    private func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }
}
