//
//  ScannerFlowView.swift
//  ScannerFlow
//
//  Created by Filipe da Cruz Ribeiro on 12/11/21.
//

import Foundation
import UIKit

protocol ScannerFlowViewProtocol where Self: UIView  {
    func render(_ dataSource: ScannerFlow.DataSource)
}

final class ScannerFlowView: UIView {
    static func make() -> ScannerFlowViewProtocol {
        ScannerFlowView()
    }
}

extension ScannerFlowView: ScannerFlowViewProtocol {
    func render(_ dataSource: ScannerFlow.DataSource) {
        
    }
}
