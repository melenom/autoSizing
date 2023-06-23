//
//  MineTextMessageCell.swift
//  chat screen with collection view
//
//  Created by melenom on 2023/6/23.
//

import UIKit
import Foundation

class MineTextMessageCell: MineCell {
    lazy var messageLabel: UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.textColor = .black
        lb.font = .systemFont(ofSize: 16, weight: .medium)
        return lb
    }()
}

extension MineTextMessageCell {
    override func makeUI() {
        super.makeUI()
        bubbleView.addSubview(messageLabel)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        messageLabel.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 5).isActive = true
        messageLabel.leftAnchor.constraint(equalTo: bubbleView.leftAnchor, constant: 5).isActive = true
        messageLabel.rightAnchor.constraint(equalTo: bubbleView.rightAnchor, constant: -5).isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -5).isActive = true
    }
}

extension MineTextMessageCell {
    override func setUp() {
        bubbleView.backgroundColor = .green
        messageLabel.textColor = .white
        avatorView.backgroundColor = .red
    }
}

extension MineTextMessageCell {
    func config(with model: ChatDataModel) {
        messageLabel.text = model.chatmessage
    }
}
