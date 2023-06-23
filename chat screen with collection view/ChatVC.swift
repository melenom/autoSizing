//
//  ViewController.swift
//  chat screen with collection view
//
//  Created by Sandeep Sahani on 22/06/23.
//

import UIKit

class ChatVC: UIViewController {

    var chatData = [ChatDataModel(chatmessage: "Hello, welcome thank you for visiting our website. How can we assist you?", isSender: false),ChatDataModel(chatmessage: "Hello, thank you for using service. Can I help you with something?", isSender: false),ChatDataModel(chatmessage: "Hi there! I'm interested in your internet service. Can you provide some details about your plans and pricing?", isSender: true),ChatDataModel(chatmessage: "Absolutely! We offer three internet plans: Basic, Standard, and Premium. The Basic plan offers download speeds up to 50 Mbps and costs $30 per month. The Standard plan provides download speeds up to 100 Mbps and is priced at $50 per month. The Premium plan offers lightning-fast speeds up to 250 Mbps and is priced at $70 per month. Which one would you like to know more about?", isSender: false),ChatDataModel(chatmessage: "The Premium plan sounds promising. Can you tell me about any additional features or benefits it offers compared to the other plans?", isSender: true),ChatDataModel(chatmessage: "Certainly! With our Premium plan, you not only get the fastest speeds but also unlimited data usage, a complimentary Wi-Fi router, and priority customer support. We also provide a free installation service and a 30-day money-back guarantee. It's our top-tier package designed for customers who require high-performance internet for streaming, gaming, or any other bandwidth-intensive activities.", isSender: false),ChatDataModel(chatmessage: "That sounds great! I'm particularly interested in the unlimited data usage since I stream a lot of movies and play online games. How reliable is your network?", isSender: true),ChatDataModel(chatmessage: "Our network is highly reliable and offers a robust connection. We have invested in advanced infrastructure to ensure minimal downtime and consistent performance. We also have multiple redundancy measures in place to mitigate any potential disruptions. Our aim is to provide you with a seamless and uninterrupted internet experience.", isSender: false),ChatDataModel(chatmessage: "That's reassuring to hear. Can I sign up for the Premium plan right away?", isSender: true), ChatDataModel(chatmessage: "Absolutely! I can assist you with the sign-up process. May I have your name, address, and contact information, please?", isSender: true),ChatDataModel(chatmessage: " Sure, my name is John Doe. I live at 123 Main Street, Cityville. You can reach me at 555-123-4567, and my email address is johndoe@email.com.", isSender: true),ChatDataModel(chatmessage: "Thank you, John. I have your details. Now, let's proceed with the installation appointment. Our technician will visit your residence on Thursday, June 28th, between 1:00 PM and 4:00 PM. Does that work for you?", isSender: false),ChatDataModel(chatmessage: "That works perfectly for me. I'll make sure to be home during that time.", isSender: true),ChatDataModel(chatmessage: "Excellent! Before we conclude, I'd like to confirm your preferred method of payment. We accept credit cards, online bank transfers, and checks. Which one would you prefer?", isSender: false),ChatDataModel(chatmessage: " I'd like to pay with a credit card. Is it possible to set up automatic monthly payments?", isSender: true),ChatDataModel(chatmessage: "Certainly, John. We can set up automatic payments using your credit card. I'll securely store your payment information and ensure that your monthly bills are processed automatically. You'll receive email notifications for each transaction.", isSender: false),ChatDataModel(chatmessage: "Perfect! That's convenient for me. Thank you for your assistance.", isSender: true)]
    
    lazy var tableview: UITableView = {
       let view = UITableView()
        view.dataSource = self
        view.delegate = self
        view.separatorStyle = .none
        view.estimatedRowHeight = UITableView.automaticDimension
        
        view.register(OthersTextMessageCell.self, forCellReuseIdentifier: OthersTextMessageCell.identifier)
        
        view.register(MineTextMessageCell.self, forCellReuseIdentifier: MineTextMessageCell.identifier)
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableview)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        
        //add constraints
        tableview.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        tableview.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
    }
    
    
}

extension ChatVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        chatData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = chatData[indexPath.row]
        if !model.isSender {
            let cell = tableView.dequeueReusableCell(withIdentifier: OthersTextMessageCell.identifier, for: indexPath) as!  OthersTextMessageCell
            cell.config(with: model)
            cell.selectionStyle = .none
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MineTextMessageCell.identifier, for: indexPath) as!  MineTextMessageCell
        cell.config(with: model)
        cell.selectionStyle = .none
        return cell
    }
    
    
}



