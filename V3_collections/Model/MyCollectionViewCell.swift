
//
//  MyCollectionViewCell.swift
//  V3_collections
//
//  Created by Alex on 29.03.2023.
//

import Foundation
import UIKit
import SnapKit

class MyCollectionViewCell: UICollectionViewCell {
    static var identifier = "MyCollectionViewCell"
    var activityIndicator = UIActivityIndicatorView()
    
    //TODO: setup background color
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Create Int array with"
        label.backgroundColor = UIColor(red: 166, green: 197, blue: 198, alpha: 1)
        label.font = .systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        setupActivityIndicator()
        //        activityIndicator.startAnimating()
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = contentView.bounds
    }
    
    // MARK: activity Indicator
    func setupActivityIndicator() {
        //        activityIndicator.center = self.label.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = .large
        activityIndicator.color = UIColor.red
        contentView.addSubview(activityIndicator)
        activityIndicator.snp.makeConstraints{ make in
            make.center.equalToSuperview()
        }
    }
    
    
    func initialState() {
        
    }
    
    func loadingState() {
        activityIndicator.startAnimating()
    }
    
    func showResultState() {
        activityIndicator.stopAnimating()
        
    }
    
    
//
//    var state: State {
//
//        return State
//    }
    
    
    
    //        // indicator turn ON
    //        func activityIndicatorOn() {
    //            activityIndicator.startAnimating()
    //        }
    //        // indicator turn OFF
    //        func activityIndicatorOff() {
    //            activityIndicator.stopAnimating()
    //        }
    
    // открыть прошлый паттерн стейт и разобраться как он работает.
    //    начать делать state в клетке. для каждой
}

extension MyCollectionViewCell {
    enum State {
        case initial
        case loading
        case result
    }
    
}
