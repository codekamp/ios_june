//
//  MembersPageViewController.swift
//  ApiDemo
//
//  Created by Cerebro on 27/06/17.
//  Copyright © 2017 CodeKamp. All rights reserved.
//

import UIKit

class MembersPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var lists:[MailChimpList] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        
        MailChimpService.getLists {
            (lists) in
            
            print("lists fetch ho gayi")
            
            self.lists = lists
            
            let vc = self.createMembersVC(listId: self.lists[0].id)
            
            self.setViewControllers([vc], direction: UIPageViewControllerNavigationDirection.forward, animated: true, completion: nil)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("viewDidAppear call ho gaya")
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentListId = (viewController as! MembersViewController).listId
        
        var currentIndex = 0;
        for list in lists {
            
            if list.id == currentListId {
                break
            }
            
            currentIndex += 1;
        }
        
        if currentIndex + 1 == lists.count {
            return nil
        }
        
        let nextList = lists[currentIndex + 1]
        
        return createMembersVC(listId: nextList.id)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentListId = (viewController as! MembersViewController).listId
        
        var currentIndex = 0;
        for list in lists {
            
            if list.id == currentListId {
                break
            }
            
            currentIndex += 1;
        }
        
        if currentIndex == 0 {
            return nil
        }
        
        let nextList = lists[currentIndex - 1]
        
        return createMembersVC(listId: nextList.id)
    }
    
    func createMembersVC(listId:String) -> MembersViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "memers_table_view") as! MembersViewController
        
        vc.listId = listId
        
        return vc
    }

}
