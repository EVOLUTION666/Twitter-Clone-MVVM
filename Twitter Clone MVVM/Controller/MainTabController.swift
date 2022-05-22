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
}

// MARK: - Helpers

extension MainTabController {
    
    private func configureTabBar() {
        configureViewControllers()
        configureTabBarColor()
    }
    
    private func configureViewControllers() {
        
        let feed = FeedController()
        let feedNavigation = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
        
        let explore = ExploreController()
        let exploreNavigation = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explore)
        
        let notifications = NotificationsController()
        let notificationNavigation = templateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notifications)
        
        let conversations = ConversationsController()
        let conversationsNavigation = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversations)
        
        viewControllers = [feedNavigation, exploreNavigation, notificationNavigation, conversationsNavigation]
        
    }
    
    private func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image

        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemGray6
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        nav.navigationBar.tintColor = .white
        nav.navigationBar.standardAppearance = appearance
        nav.navigationBar.compactAppearance = appearance
        nav.navigationBar.scrollEdgeAppearance = appearance
        
        return nav
        
    }
    
    private func configureTabBarColor() {
        
        UITabBar.appearance().backgroundColor = .systemGray6
        tabBar.backgroundImage = UIImage()
        
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = .white
        
    }
}
