//
//  HomeViewController.swift
//  Demo
//
//  Created by jolly on 2018/9/28.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import MVPLib

class HomeViewController: IViewController<HomePresentProto>,HomeViewProto {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    override func onBuildPresent()->HomePresentProto? {
        /* 请在此处生成您的 Present */
        return HomePresent.Builder().build(self)
    }

    func asViewController() ->HomeViewController?{
        return self
    }

}
