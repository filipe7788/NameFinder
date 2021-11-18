//
//  ScannerResultCell.swift
//  NameFinder
//
//  Created by Filipe da Cruz Ribeiro on 17/11/21.
//

import Foundation
import UIKit
protocol ScannerResultCellProtocol where Self: UIView  {
    func render(text: String)
}

final class ScannerResultCell: UITableViewCell, ScannerResultCellProtocol {

    private let textTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    required init?(coder: NSCoder) {
        fatalError()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }

    private func setup() {
        contentView.backgroundColor = .white
        setupTextLabel()
    }

    private func setupTextLabel() {
        contentView.addSubview(textTitleLabel)

        textTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        textTitleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        textTitleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        textTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        textTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true

    }

    func render(text: String) {
        textTitleLabel.text = text
    }
}
