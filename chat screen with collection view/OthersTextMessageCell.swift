//
//  OthersTextMessageCell.swift
//  chat screen with collection view
//
//  Created by melenom on 2023/6/23.
//

import UIKit
import Foundation

class OthersTextMessageCell: OthersCell {
    
    lazy var messageLabel: UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.textColor = .black
        lb.font = .systemFont(ofSize: 16, weight: .medium)
        return lb
    }()
}

extension OthersTextMessageCell {
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

extension OthersTextMessageCell {
    override func setUp() {
        bubbleView.backgroundColor = .lightGray
    }
}
extension OthersTextMessageCell {
    func config(with model: ChatDataModel) {
        messageLabel.text = model.chatmessage
    }
}
