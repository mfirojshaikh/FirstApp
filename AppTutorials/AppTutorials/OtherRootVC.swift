//
//  OtherRootVC.swift
//  AppTutorials
//
//  Created by Firoj Shaikh on 23/12/17.
//  Copyright © 2017 Firoj Shaikh. All rights reserved.
//

import UIKit

class OtherRootVC: UIViewController,UIPageViewControllerDelegate {

    var pageViewController:UIPageViewController?
    var modelController:ModelController{
        return ModelController()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // initialize pageVC
        self.pageViewController = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
        self.pageViewController?.delegate = self
        let startViewController:DataViewController = self.modelController.viewControllerAtIndex(0, storyboard: self.storyboard!)
        let viewControllers = [startViewController]
        self.pageViewController?.setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
        self.pageViewController?.dataSource = self.modelController

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
