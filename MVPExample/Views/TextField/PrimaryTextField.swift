//
//  PrimaryTextField.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 16.03.2021.
//

import UIKit

final class PrimaryTextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    private func commonInit() {
        layer.cornerRadius = 8
        layer.masksToBounds = true
        backgroundColor = Asset.Colors.activeBackground.color
    }
}
