//
//  PageVC.swift
//  TechnoSmart
//
//  Created by Rohit Chawla on 14/01/17.
//  Copyright © 2017 Rohit Chawla. All rights reserved.
//

import Foundation
import UIKit
class PageVC : UIPageViewController, UIPageViewControllerDataSource , UIPageViewControllerDelegate
{
    
    var previousIndex: Int = 0
    lazy var VCArr : [UIViewController] =
        {
            return[self.VCInstance(name : "FirstVC"),self.VCInstance(name : "SecondVC"),self.VCInstance(name : "ThirdVC"),self.VCInstance(name : "FourthVC")]
    }()
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        for view in self.view.subviews
        {
            if view is UIScrollView
            {
                 view.frame = UIScreen.main.bounds
               
                if view.tag == 4
                {
                
               view.frame = CGRect(x: 0, y: 0, width: 375, height: 100)
                
                }
                
                //let mainframe = view
             //   view.frame = CGRect(x: 0, y: 610, width: 375, height: 100)
               // view.backgroundColor = UIColor.blue
           //     view.frame = UIScreen.main.bounds
              //  mainframe.frame = CGRect(x: mainframe.origin.x, y: mainframe.origin.y, width: mainframe.width, height: mainframe.height)
                
                
                
            }
                
                
            else if view is UIPageControl
            {
                
                if view.tag == 4
                {
                    
                    view.frame = CGRect(x: 0, y: 0, width: 375, height: 100)
                    
                }

                view.frame = CGRect(x: 0, y: 610, width: 375, height: 57)
                
             view.backgroundColor = UIColor.black
            }
        }
    }
    
    private func VCInstance(name: String) ->UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
    
    
    
    override func viewDidLoad() {
        self.dataSource = self
        self.delegate = self
        
        if let firstVC = VCArr.first{setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }}
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        
        guard let viewControllerindex = VCArr.index(of: viewController) else
        {
            return nil
        }
        if viewControllerindex == 0
            
        {
            
            return nil
            
        }
        else
        {
            previousIndex = viewControllerindex - 1
        }
//        guard previousIndex >= 0  else
//        {
//          
//            return VCArr.last
//        }
        
//        guard VCArr.count > previousIndex  else {
//            return nil
//        }
        
        return VCArr[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
        
    {
        guard let viewControllerindex = VCArr.index(of: viewController)
            else{
                return nil}
        
        
        let nextindex =  viewControllerindex + 1
        
        //        guard  nextindex < VCArr.count else {
        //           // return VCArr.first
        //     }
        
        guard  VCArr.count > nextindex
            
            else {
            return nil
        }
        
        
        return VCArr[nextindex]
        
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int
    {
        
        return VCArr.count
    }
    
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int
    {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = VCArr.index(of: firstViewController)
            else {
                return 0
        }
        
        return firstViewControllerIndex
        
        
        
        
        
    }
}
