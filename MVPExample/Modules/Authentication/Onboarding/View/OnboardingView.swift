//
//  OnboardingView.swift
//  MVPExample
//
//  Created by Rustam Nurgaliev on 13.03.2021.
//

import UIKit
import SnapKit

final class OnboardingView: UIView {
    struct Appearance: Grid {
        let textFieldHeight: CGFloat = 40
        let buttonHeight: CGFloat = 50
    }
    
    struct ViewModel {
    }
    
    // MARK: - Internal Properties

    let appearance: Appearance
    
    // MARK: - Private properties
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = Text.Onboarding.title
        return label
    }()
    
    lazy var signInButton: UIButton = {
        let button = PrimaryButton()
        button.setTitle(Text.Onboarding.singIn, for: .normal)
        return button
    }()
    
    lazy var singUpButton: UIButton = {
        let button = PrimaryButton()
        button.setTitle(Text.Onboarding.singUp, for: .normal)
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
        addSubview(signInButton)
        addSubview(singUpButton)
    }

    private func setupStyles() {
        backgroundColor = Asset.Colors.primaryBackground.color
    }

    private func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(appearance.mSpace)
        }
        
        signInButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(appearance.mSpace)
            make.trailing.equalTo(snp.centerX).offset(-appearance.xxsSpace)
            make.bottom.equalTo(safeAreaLayoutGuide).inset(appearance.sSpace)
            make.height.equalTo(appearance.textFieldHeight)
        }

        singUpButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(appearance.mSpace)
            make.leading.equalTo(snp.centerX).offset(appearance.xxsSpace)
            make.centerY.equalTo(signInButton)
            make.height.equalTo(appearance.textFieldHeight)
        }
    }
}

// MARK: - ViewModelConfigurable

extension OnboardingView: ViewModelConfigurable {
    func configure(with viewModel: ViewModel) {
    }
}
