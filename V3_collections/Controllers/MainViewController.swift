//
//  MainViewController (before 09.05.23 CollectionVC.swift)
//  V3_collections
//
//  Created by Alex on 18.03.2023.
//

import Foundation
import UIKit

final class MainViewController: UIViewController {
    //MARK: UI elements
    private let arrayController = ArrayController()
    private let setController = SetController()
    private let dictionaryController = DictionaryController()
    private let arrayVC = ["Array", "Set", "Dictionary"]
    private let tableView: UITableView = {
        let view = UITableView()
        view.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        return view
    }()
    private let activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.hidesWhenStopped = true
        return activityIndicator
    }()
    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupViews()
        setupDelegates()
        setupUI()
    }
    //MARK: delegates
    private func setupDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    //MARK: Items On View
    private func setupViews() {
        view.backgroundColor = .white
        navigationController?.navigationBar.backgroundColor = .white
    }
    
    private func setupUI() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.topItem?.title = "Collections"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.largeTitleDisplayMode = .always
    }
}
// MARK: extensions - UITableView
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.show(arrayController, sender: self)
        case 1:
            self.show(setController, sender: self)
        case 2:
            self.show(dictionaryController, sender: self)
        default:
            break
        }
    }
}
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayVC.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellId") else { return UITableViewCell() }
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = arrayVC[indexPath.row]
        return cell
    }
}

