//
//  SignInView.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import UIKit
import SnapKit

final class SignInView: UIView {
    struct Appearance: Grid {
        let textFieldHeight: CGFloat = 40
        let buttonHeight: CGFloat = 50
    }
    
    struct ViewModel {
        let isActiveNextButton: Bool
    }
    
    // MARK: - Internal Properties

    let appearance: Appearance
    
    // MARK: - Private properties
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let textField = PrimaryTextField()
        textField.placeholder = Text.SignIn.loginPlaceholder
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = PrimaryTextField()
        textField.placeholder = Text.SignIn.passwordPlaceholder
        textField.isSelected = true
        return textField
    }()
    
    lazy var nextButton: UIButton = {
        let button = PrimaryButton()
        button.setTitle(Text.Common.next, for: .normal)
        button.isEnabled = false
        return button
    }()
    
    // MARK: - Init

    init(frame: CGRect = .zero, appearance: Appearance = Appearance()) {
        self.appearance = appearance
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private methods

    private func commonInit() {
        addSubviews()
        setupStyles()
        makeConstraints()
    }

    private func addSubviews() {
        addSubview(titleLabel)
        addSubview(loginTextField)
        addSubview(passwordTextField)
        addSubview(nextButton)
    }

    private func setupStyles() {
        backgroundColor = Asset.Colors.primaryBackground.color
    }

    private func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(appearance.xxxlSpace)
            make.leading.trailing.equalToSuperview().inset(appearance.mSpace)
        }
        
        loginTextField.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(appearance.mSpace)
            make.height.equalTo(appearance.textFieldHeight)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(appearance.xsSpace)
            make.leading.trailing.equalToSuperview().inset(appearance.mSpace)
            make.height.equalTo(appearance.textFieldHeight)
        }
        
        nextButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(appearance.mSpace)
            make.height.equalTo(appearance.buttonHeight)
            make.bottom.equalToSuperview().inset(appearance.lSpace)
        }
    }
}

// MARK: - ViewModelConfigurable

extension SignInView: ViewModelConfigurable {
    func configure(with viewModel: ViewModel) {
        nextButton.isEnabled = viewModel.isActiveNextButton
    }
}
