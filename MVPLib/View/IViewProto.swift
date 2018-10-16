//
//  IViewProtocol.swift
//  ZK Smart Key
//
//  Created by apple on 2018/2/27.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import UIKit

public protocol ViewProto{
    associatedtype P
}

public protocol IViewProto {
    func setPresent(_ present:IPresentProto)
}

public protocol INavgationStyleProto {
    var navBgColor:UIColor{ set get }
    var titleColor:UIColor{set get}
    var backButtonImage:UIImage{set get}
    var titleFont:UIFont{set get}
}



