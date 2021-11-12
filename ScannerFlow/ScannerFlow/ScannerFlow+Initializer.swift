//
//  ScannerFlow+Initializer.swift
//  ScannerFlow
//
//  Created by Filipe da Cruz Ribeiro on 12/11/21.
//

import Foundation
import UIKit

extension ScannerFlow {
    public static func initialize() -> UIViewController {
        let customView = ScannerFlowView.make()
        let viewModel = ScannerFlowViewModel()
        let viewController = ScannerFlowViewController(customView: customView, viewModel: viewModel)
        viewModel.setup(viewController)
        return viewController
    }
}
