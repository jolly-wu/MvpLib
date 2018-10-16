//
//  DViewController.swift
//  Demo
//
//  Created by jolly on 2018/8/23.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import UIKit
import MVPLib

//需是IViewProto的子类
protocol DViewProto:IViewProto {
    func showEmpty()
}

class DViewController: IViewController<DPresentProto>,DViewProto  //对外依赖接口
{
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //---处理Present的实例生成
    override func onBuildPresent() -> DPresentProto? {
        let builder = DPresent.Builder()
        return builder.build(self)
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


extension DViewController
{
    func showEmpty() {

    }
}



