//
//  HomePresent.swift
//  Demo
//
//  Created by jolly on 2018/9/28.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import MVPLib

class HomePresent: IPresent<HomeViewProto>,HomePresentProto {

    @objc override  func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @objc override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    @objc override func viewDidDisappear(_ animated:Bool){
        super.viewDidDisappear(animated)
    }

    open class Builder:IBuilder<HomePresentProto,HomeViewProto>
    {
        override open func build(_ v:HomeViewProto) -> HomePresentProto? {
            let present = HomePresent.init(v as IViewProto)
            return present as HomePresentProto
        }
    }
}
