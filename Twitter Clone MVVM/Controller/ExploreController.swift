//
//  ExploreController.swift
//  Twitter Clone MVVM
//
//  Created by Andrey on 20.05.2022.
//

import UIKit

class ExploreController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}

//MARK: - Helpers

extension ExploreController {
    private func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}
