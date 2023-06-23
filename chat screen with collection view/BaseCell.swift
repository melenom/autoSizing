//
//  BaseCell.swift
//  chat screen with collection view
//
//  Created by melenom on 2023/6/23.
//
import Foundation
import UIKit


class BaseCell: UITableViewCell {
    static var identifier: String {
        return String(describing: Self.self)
    }
    
    lazy var avatorView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .blue
        return view
    }()
    
    lazy var dateLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = .blue
        lb.font = .systemFont(ofSize: 10, weight: .regular)
        lb.text = "00:00"
        return lb
    }()
    
    lazy var bubbleView: UIView = {
        let lb = UIView()
        lb.backgroundColor = .green
        return lb
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        makeUI()
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension BaseCell {
    @objc func makeUI() {
        backgroundColor = .clear
        contentView.backgroundColor = .clear
    }
    
    @objc func setUp() {
       
    }
}
