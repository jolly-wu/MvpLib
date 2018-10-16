//___FILEHEADER___

import MVPLib

class ___FILEBASENAMEASIDENTIFIER___: IViewController<___VARIABLE_productName___PresentProto>,___VARIABLE_productName___ViewProto {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    override func onBuildPresent()->___VARIABLE_productName___PresentProto? {
        /* 请在此处生成您的 Present */
        return ___VARIABLE_productName___Present.Builder().build(self)
    }

    func asViewController() ->___VARIABLE_productName___ViewController?{
        return self
    }

}
