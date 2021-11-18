//
//  ScannerResultView.swift
//  NameFinder
//
//  Created by Filipe da Cruz Ribeiro on 17/11/21.
//

import Foundation
import UIKit

final class ScannerResultView: UIView {
    static func make() -> ScannerResultView {
        return ScannerResultView()
    }

    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        
        tableView.register(ScannerResultCell.self, forCellReuseIdentifier: "ScannerResultCell")
        return tableView
    }()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup() {
        backgroundColor = .white
        setupTableView()
    }

    private func setupTableView() {
        addSubview(tableView)

        tableView.translatesAutoresizingMaskIntoConstraints = false

        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
}
