//
//  ScannerFlowViewController.swift
//  ScannerFlow
//
//  Created by Filipe da Cruz Ribeiro on 12/11/21.
//

import Foundation
import UIKit

final class ScannerFlowViewController: UIViewController {

    private let customView: ScannerFlowViewProtocol
    private let viewModel: ScannerFlowViewModelProtocol

    init(customView: ScannerFlowViewProtocol, viewModel: ScannerFlowViewModelProtocol) {
        self.customView = customView
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func loadView() {
        view = customView
    }
}

extension ScannerFlowViewController: ScannerFlowViewModelDelegate {
    func render(_ dataSource: ScannerFlow.DataSource) {
        customView.render(dataSource)
    }
}
