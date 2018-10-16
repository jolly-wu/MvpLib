//
//  DPresent.swift
//  Demo
//
//  Created by jolly on 2018/8/23.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import UIKit
import MVPLib

//定义present 的接口
public protocol DPresentProto:IPresentProto {
    func onAdd() 
}

class DPresent: IPresent<DViewProto>,DPresentProto
{
    func onAdd() {
        
    }

    @objc override func viewDidLoad() {
        
    }

    @objc override func viewWillAppear(_ animated: Bool) {
        
    }

    @objc override func viewWillDisappear(_ animated: Bool) {

    }

    class Builder: IBuilder<DPresentProto, DViewProto> {
        override func build(_ v: DViewProto) -> DPresentProto? {
            return DPresent.init(v) as DPresentProto
        }
    }
}












