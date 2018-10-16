//
//  PresentProtocol.swift
//  ZK Smart Key
//
//  Created by jolly on 18/1/25.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

public protocol IBuilderProto {
    associatedtype P            //present
    associatedtype V            //view

    func build(_ view:V)->P?
    func configure(_ routle:IViewRouteProto...) //不定参数列表。路由、业务组件注入等
}

/*
    IBuilder可做为IPresentProto的内部类
 */

public protocol IPresentProto {
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)
}

extension IPresentProto{

    public func viewDidAppear(_ animated: Bool)
    {
        return
    }

    public func viewDidDisappear(_ animated: Bool)
    {
        
    }
}

