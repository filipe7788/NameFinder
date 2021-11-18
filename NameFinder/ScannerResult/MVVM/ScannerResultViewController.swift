//
//  ScannerResultViewController.swift.swift
//  NameFinder
//
//  Created by Filipe da Cruz Ribeiro on 12/11/21.
//

import UIKit

class ScannerResultViewController: UIViewController {

    let customView: ScannerResultView
    let recognizedText: [String]

    init(customView: ScannerResultView,
         text: [String]
    ) {
        self.customView = customView
        self.recognizedText = text
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
    }

    override func loadView() {
         view = customView
    }
}

extension ScannerResultViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recognizedText.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScannerResultCell", for: indexPath) as! ScannerResultCell
        cell.render(text: recognizedText[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Document content"
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        .init(64)
    }
}
