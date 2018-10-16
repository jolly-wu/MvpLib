//
//  MyView.swift
//  Demo
//
//  Created by jolly on 2018/9/28.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import CocoaTouch
import MVPLib

class MyView: IViewController<MyViewPresentProto>,MyViewViewProto {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    open func onBuildPresent()->MyViewPresentProto? {
        assert(false, "please builder your present")
        return nil
    }


}
