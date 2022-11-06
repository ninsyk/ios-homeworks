//
//  TabBarController.swift
//  Navigation
//
//  Created by playrix on 06.11.2022.
//

import UIKit

class UITabBarController: UITabBarController {
    
    // MARK: - Properties
    
    var firstTabNavigationController : UINavigationController!
    var secondTabNavigationControoller : UINavigationController!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Methods
    
    private func setupUI() {
        firstTabNavigationController = UINavigationController.init(rootViewController: FirstTabVC())
        secondTabNavigationControoller = UINavigationController.init(rootViewController: SecondTabVC())
        
        self.viewControllers = [firstTabNavigationController, secondTabNavigationControoller]
        let item1 = UITabBarItem(title: "Home",
                                 image: UIImage(systemName: "folder"), tag: 0)
        
        let item2 = UITabBarItem(title: "Profile",
                                 image:  UIImage(systemName: "folder.fill"), tag: 1)
        
        firstTabNavigationController.tabBarItem = item1
        secondTabNavigationControoller.tabBarItem = item2
        
        UITabBar.appearance().tintColor = UIColor(red: 0/255.0, green: 146/255.0, blue: 248/255.0, alpha: 1.0)
        UITabBar.appearance().backgroundColor = .brown
    }
    
}

// MARK: - Extension

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}
