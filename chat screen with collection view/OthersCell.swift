//
//  OthersCell.swift
//  chat screen with collection view
//
//  Created by melenom on 2023/6/23.
//

import Foundation

class OthersCell: BaseCell {}

extension OthersCell {
    override func makeUI() {
        super.makeUI()
        contentView.addSubview(avatorView)
        contentView.addSubview(bubbleView)
        contentView.addSubview(dateLabel)
        
        avatorView.translatesAutoresizingMaskIntoConstraints = false
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        //add constraints
        
        //1. avatorView in left
        avatorView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        avatorView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15).isActive = true
        avatorView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        avatorView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        //2. bubbleView in right
        bubbleView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        bubbleView.leftAnchor.constraint(equalTo: avatorView.rightAnchor, constant: 10).isActive = true
        bubbleView.rightAnchor.constraint(lessThanOrEqualTo: contentView.rightAnchor, constant: -15).isActive = true
        
        //3. dataLable in bottom right
        dateLabel.topAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: 10).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
        dateLabel.rightAnchor.constraint(equalTo: bubbleView.rightAnchor, constant: -12).isActive = true
        dateLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        dateLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
    }
}
