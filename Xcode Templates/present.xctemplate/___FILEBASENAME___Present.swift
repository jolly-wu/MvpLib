//___FILEHEADER___

import MVPLib

class ___FILEBASENAMEASIDENTIFIER___: IPresent<___VARIABLE_productName___ViewProto>,___VARIABLE_productName___PresentProto {

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

    open class Builder:IBuilder<___VARIABLE_productName___PresentProto,___VARIABLE_productName___ViewProto>
    {
        override open func build(_ v:___VARIABLE_productName___ViewProto) -> ___VARIABLE_productName___PresentProto? {
            let present = ___FILEBASENAMEASIDENTIFIER___.init(v as IViewProto)
            return present as ___VARIABLE_productName___PresentProto
        }
    }
}
