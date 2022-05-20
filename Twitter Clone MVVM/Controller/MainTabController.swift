//
//  MainTabController.swift
//  Twitter Clone MVVM
//
//  Created by Andrey on 20.05.2022.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }
    
    // MARK: - Helpers
    
    private func configureTabBar() {
        configureViewControllers()
        configureTabBarColor()
    }
    
    private func configureViewControllers() {
        
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        
        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(named: "like_unselected")
        
        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(named: "mail")
        
        viewControllers = [feed, explore, notifications, conversations]
        
    }
    
    private func configureTabBarColor() {
        
        //Set the background color
        UITabBar.appearance().backgroundColor = .black
        tabBar.backgroundImage = UIImage()   //Clear background
        
        //Set the item tint colors
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = .white
        
    }
    
}
