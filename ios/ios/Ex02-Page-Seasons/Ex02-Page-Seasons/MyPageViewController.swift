//
//  MyPageViewController.swift
//  Ex02-Page-Seasons
//
//  Created by admin1 on 4/21/22.
//  Copyright © 2022 admin1. All rights reserved.
//

import UIKit

class MyPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var controllerArray: [UIViewController]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = storyBoard.instantiateViewController(withIdentifier: "page01")
        let secondVC = storyBoard.instantiateViewController(withIdentifier: "page02")
        let thirdVC = storyBoard.instantiateViewController(withIdentifier: "page03")
        let FourthVC = storyBoard.instantiateViewController(withIdentifier: "page04")
        controllerArray = [firstVC, secondVC, thirdVC, FourthVC]
        self.setViewControllers([controllerArray![0]], direction: UIPageViewController.NavigationDirection.forward, animated: true, completion: nil)
        
        setupPageControl()
        
      
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = controllerArray!.firstIndex(of: viewController) else {
            return nil
        }
        let preIndex = vcIndex - 1
        guard preIndex >= 0 else {
            return controllerArray!.last // loops back to end
        }
        guard controllerArray!.count > preIndex else { return nil
        }
        return controllerArray![preIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = controllerArray!.firstIndex(of: viewController) else {
            return nil
        }
        let nextIndex = vcIndex + 1
        guard controllerArray!.count != nextIndex else {
            return controllerArray!.first // loops back to beginning
        }
        guard controllerArray!.count > nextIndex else { return nil
        }
        return controllerArray![nextIndex]
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return (controllerArray?.count)!
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.gray
        appearance.currentPageIndicatorTintColor = UIColor.white
        appearance.backgroundColor = UIColor.black
    }
    
}    
