//
//  IBaseViewController.swift
//  MVPLib
//
//  Created by jolly on 2018/9/26.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import UIKit

open class IBaseViewController: UIViewController {
    
    public var titleFont: UIFont = UIFont.systemFont(ofSize: 18)
    public var backButtonImage: UIImage = UIImage.init()
    public var navBgColor: UIColor = UIColor.white
    public var titleColor: UIColor = UIColor.black

    override open func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        // Do any additional setup after loading the view.
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    open func setNavigateStyle()  {
        let navBar:UINavigationBar? = self.navigationController?.navigationBar;
        if navBar != nil {
            navBar?.backgroundColor = navBgColor
            navBar?.isTranslucent = false
            navBar?.titleTextAttributes = [
                NSAttributedStringKey.font:titleFont,
                NSAttributedStringKey.foregroundColor:titleColor
            ];
        }
    }

    open func setNavBackItem()  {
        let backButton:UIButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: backButton)
        backButton.setImage(backButtonImage, for: UIControlState.normal)
        backButton.addTarget(self, action: #selector(onBack), for: UIControlEvents.touchUpInside)
        backButton.isHidden = self.needHideBackItem()
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

    @objc open func onBack()  {
        self.navigationController?.popViewController(animated: true)
    }

    open func setNavRightItem(items:[UIButton])  {
        var aryBarItem:[UIBarButtonItem] = []
        var i = 0
        for item:UIButton in items {
            let spacer:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil,action: nil)
            spacer.width = 15
            if i == 0{
                spacer.width = -10
            }
            let barItem:UIBarButtonItem = UIBarButtonItem(customView: item)
            aryBarItem.append(spacer)
            aryBarItem.append(barItem)
            i += 1
        }
        self.navigationItem.rightBarButtonItems = aryBarItem
    }

    open func setupUI()  {
        setNavigateStyle()
        setNavBackItem()
    }

    open func needHideBackItem() -> Bool {
        return false
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
