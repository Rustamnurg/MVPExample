//
//  PrimaryButton.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 16.03.2021.
//

import UIKit

final class PrimaryButton: UIButton {
    enum CommonConstants {
        static let height: CGFloat = 48
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        titleLabel?.font = .boldSystemFont(ofSize: 12)
        layer.cornerRadius = 8
        layer.masksToBounds = true
        backgroundColor = Asset.Colors.activeBackground.color
        setTitleColor(Asset.Colors.textColor.color, for: .normal)
        setTitleColor(Asset.Colors.textColor.color.withAlphaComponent(0.8), for: .highlighted)
        setTitleColor(Asset.Colors.textColor.color.withAlphaComponent(0.3), for: .disabled)
    }
}
