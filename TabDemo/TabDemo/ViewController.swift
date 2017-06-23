//
//  ViewController.swift
//  TabDemo
//
//  Created by Cerebro on 23/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class ViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var myControllers:[UIViewController] = []
    
    var listIds:[String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self

        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstScreen  = storyboard.instantiateViewController(withIdentifier: "first_vc")
        
        setViewControllers([firstScreen], direction: UIPageViewControllerNavigationDirection.forward, animated: true, completion: nil)
        
        listIds.index(of: "hello")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        
        let vc = viewController as! ListViewController
        let index = vc.index
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC  = storyboard.instantiateViewController(withIdentifier: "first_vc") as! ListViewController
        
        newVC.index = index + 1;
        
        return newVC
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! ListViewController
        let index = vc.index
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC  = storyboard.instantiateViewController(withIdentifier: "first_vc") as! ListViewController
        
        if index == 0 {
            return nil
        }
        
        newVC.index = index - 1;
        return newVC
    }
    
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return 4
//    }
//    
//    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//        
//        
//        return 0
//    }
    
    
}

