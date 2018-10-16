//
//  IPresent.swift
//  MVPLib
//
//  Created by jolly on 2018/8/23.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import UIKit

//对外依赖
open class IPresent<V>: NSObject,IPresentProto {

    @objc open  func viewDidLoad() {

    }

    @objc open func viewWillAppear(_ animated: Bool) {

    }

    @objc open func viewWillDisappear(_ animated: Bool) {

    }

    @objc open func viewDidDisappear(_ animated: Bool) {

    }

    public init(_ v:IViewProto)  {
        view = v as! V
    }

    public let view: V
    public var route:IViewRouteProto?     //路由

    open class IBuilder<P,V>: NSObject, IBuilderProto {

        open func build(_ v:V) -> P? {
            let present = IPresent.init(v as! IViewProto)
            return present as? P
        }

        open func configure(_ route: IViewRouteProto...)  {

        }
    }
}








