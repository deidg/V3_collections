//
//  cellArayContollerMain.swift
//  V3_collections
//
//  Created by Alex on 23.03.2023.
//

import UIKit


class CellArrayContollerMain: UITableViewCell {

    let titleLabel = UILabel()
    
//    var collection: String? {
//        didSet {
////            guard let array = collection else { return }
//            titleLabel.text = collection
//        }
//    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        layout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CellArrayContollerMain {

    func setup() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        // don't disable translatesAutoresizingMaskIntoConstraints on the cell itself
        contentView.addSubview(titleLabel) // important!

        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}






/*
//    tableView.rowHeight = 100
class CellArrayContollerMain: UITableViewCell {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell() {
        let titleLabel = titleLabel
        titleLabel.text = "Array for 10mln rows"
    }
    
    
}
*/
