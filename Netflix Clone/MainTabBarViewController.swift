//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Batuhan Küçükyıldız on 6.10.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        let viewControllerHome = UINavigationController(rootViewController: HomeViewController())
        let viewControllerUpcoming = UINavigationController(rootViewController: UpcomingViewController())
        let viewControllerSearch = UINavigationController(rootViewController: SearchViewController())
        let viewControllerDownloads = UINavigationController(rootViewController: DownloadsViewController())

        viewControllerHome.tabBarItem.image = UIImage(systemName: "house")
        viewControllerUpcoming.tabBarItem.image = UIImage(systemName: "play.circle")
        viewControllerSearch.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        viewControllerDownloads.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        
        viewControllerHome.title = "Home"
        viewControllerUpcoming.title = "Coming Soon"
        viewControllerSearch.title = "Top Search"
        viewControllerDownloads.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([viewControllerHome,
                            viewControllerUpcoming,
                            viewControllerSearch,
                            viewControllerDownloads], animated: true)
    }


}

