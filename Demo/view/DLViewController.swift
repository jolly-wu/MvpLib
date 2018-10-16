//
//  DLViewController.swift
//  
//
//  Created by jolly on 2018/9/28.
//

import CocoaTouch
import MVPLib

class DLViewController: IViewController<DLViewControllerPresentProto>,DLViewControllerViewProto {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    open func onBuildPresent()->DLViewControllerPresentProto? {
        assert(false, "please builder your present")
        return nil
    }


}
