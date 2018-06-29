//
//  HomeViewController.swift
//  TabBarExample
//
//  Created by Jorge Castro on 06/29/18.
//  Copyright © 2018 Jorge Castro. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var tabBar: UITabBarController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupTabBar(){
        
        tabBar = UITabBarController()
        self.view.addSubview(tabBar.view)
        
        let tab1 = Tab1ViewController()
        tab1.title = "Tab 1"
        tab1.view.backgroundColor = UIColor.orange
        tab1.tabBarItem = UITabBarItem(title: "Tab 1", image: #imageLiteral(resourceName: "ic_home"), tag: 0)
        
        let tab2 = Tab2ViewController()
        tab2.title = "Tab 2"
        tab2.view.backgroundColor = UIColor.lightGray
        tab2.tabBarItem = UITabBarItem(title: "Tab 2", image: #imageLiteral(resourceName: "ic_download"), tag: 1)
        
        let controllers = [
            tab1,
            tab2
        ]
        
        /*let controllers = [
            UINavigationController(rootViewController: tab1),
            UINavigationController(rootViewController: tab2)
        ]*/
        
        tabBar?.viewControllers = controllers
        tabBar?.viewControllers = controllers.map { UINavigationController(rootViewController: $0)}
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
