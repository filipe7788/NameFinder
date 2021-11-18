//
//  ScannerFlowView.swift
//  ScannerFlow
//
//  Created by Filipe da Cruz Ribeiro on 12/11/21.
//

import Foundation
import UIKit
import Cartography

protocol ScannerFlowViewProtocol where Self: UIView  {
    func render(_ dataSource: ScannerFlow.DataSource)
}

final class ScannerFlowView: UIView {
    static func make() -> ScannerFlowViewProtocol {
        ScannerFlowView()
    }

    private let nameStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        return stackView
    }()

    private let nameTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Recognized name:"
        return label
    }()

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Filipe da Cruz"
        return label
    }()

    private let takePictureButton: UIButton = {
        let button = UIButton()
        button.setTitle("Take card picture", for: .normal)
        return button
    }()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    func setup() {
        setupNameStackView()
    }

    func setupNameStackView() {
        addSubview(nameStackView)
        constrain(nameStackView, self) { stackView, superview in
            stackView.top == superview.safeAreaLayoutGuide.top + 64
            stackView.leading == superview.leading + 24
            stackView.trailing == superview.trailing - 24
        }
    }

    private func setupButton() {
        addSubview(takePictureButton)
        constrain(takePictureButton, nameStackView, self) { cameraButton, stackView, superview in
            cameraButton.height == 40
            cameraButton.leading == superview.leading + 24
            cameraButton.trailing == superview.trailing - 24
        }
    }
}

extension ScannerFlowView: ScannerFlowViewProtocol {
    func render(_ dataSource: ScannerFlow.DataSource) {
        
    }
}
