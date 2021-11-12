//
//  ScannerFlowViewModel.swift
//  ScannerFlow
//
//  Created by Filipe da Cruz Ribeiro on 12/11/21.
//

import Foundation

protocol ScannerFlowViewModelProtocol {
    func setup(_ delegate: ScannerFlowViewModelDelegate)
}

protocol ScannerFlowViewModelDelegate: AnyObject {
    func render(_ dataSource: ScannerFlow.DataSource)
}

final class ScannerFlowViewModel {

    private weak var delegate: ScannerFlowViewModelDelegate?

    init(){

    }
}

extension ScannerFlowViewModel: ScannerFlowViewModelProtocol {
    func setup(_ delegate: ScannerFlowViewModelDelegate) {
        self.delegate = delegate
    }
}
