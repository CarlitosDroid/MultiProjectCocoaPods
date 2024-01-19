//
//  FilterView.swift
//  ModuleCore
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 18/01/24.
//

import UIKit

class FilterView: UIView {

    let nibName = "OrderConfirmationTitleView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initSubviews()
    }
    
    private func initSubviews() {
        let bundle = Bundle(for: type(of: self)) // We need bundle since we are in another module
        let nib = UINib(nibName: String(describing: FilterView.self), bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Unable to convert nib")
        }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
