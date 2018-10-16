//
//  IBaseViewController.swift
//  ZK Smart Key
//
//  Created by apple on 2018/2/27.
//  Copyright © 2018年 zktechnology. All rights reserved.
//

import UIKit
//由于xib、storyboard对泛型的子类化认不到，此处没有加泛型约束
open class IViewController<P>: IBaseViewController ,IViewProto,INavgationStyleProto{

    public func setPresent(_ pt: IPresentProto) {
        present = (pt as! P)
    }

    open var present: P?

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        setPresent(onBuildPresent()! as! IPresentProto)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setPresent(onBuildPresent()! as! IPresentProto)
    }

    open func onBuildPresent()->P? {
        assert(false, "please builder your present")
        return nil
    }

    override open func viewDidLoad() {
        super.viewDidLoad()
        invokeFunction(sel: #selector(viewDidLoad))
        // Do any additional setup after loading the view.
    }

    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        invokeFunction(sel: #selector(viewDidAppear))
    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        invokeFunction(sel: #selector(viewWillAppear))
    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        invokeFunction(sel: #selector(viewWillDisappear))
    }
    
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func invokeFunction(sel:Selector){
        if present != nil {
            let oPresent:NSObject? = present as! NSObject?
            let responsed:Bool? = oPresent?.responds(to: sel)
            if responsed ?? false {
                oPresent?.perform(sel)
            }
        }
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







