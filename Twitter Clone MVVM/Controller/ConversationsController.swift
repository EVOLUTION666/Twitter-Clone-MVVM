//
//  ConversationsController.swift
//  Twitter Clone MVVM
//
//  Created by Andrey on 20.05.2022.
//

import UIKit

class ConversationsController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
}

//MARK: - Helpers

extension ConversationsController {
    private func configureUI() {
        view.backgroundColor = .white
        
        navigationItem.title = "Messages"
    }
}
