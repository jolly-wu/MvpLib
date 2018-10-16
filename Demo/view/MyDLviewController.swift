//
//  MyDLviewController.swift
//  Demo
//
//  Created by jolly on 2018/9/28.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import CocoaTouch
import MVPLib

class MyDLviewController: IViewController<MyDLviewControllerPresentProto>,MyDLviewControllerViewProto {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    open func onBuildPresent()->MyDLviewControllerPresentProto? {
        assert(false, "please builder your present")
        return nil
    }


}
