//
//  MessageCell.swift
//  messengert
//
//  Created by admin on 25/05/19.
//  Copyright © 2019 professional. All rights reserved.
//

import LBTATools

class MessageCell: LBTAListCell<Message> {

    
    let imageView = UIImageView(backgroundColor: .gray)
    let nameLabel = UILabel(text: "User name", font: .boldSystemFont(ofSize: 16), textColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    let messageLabel = UILabel(text: "Hey girl, what's up there? Let's go out and have a drink tonight?", font: .systemFont(ofSize: 14), textColor: .gray, numberOfLines: 2)

    override var item: Message! {
        didSet {
            nameLabel.text = item.username
            imageView.image = UIImage(named: item.userProfileImageName)
            messageLabel.text = item.text
        }
    }
    
    override func setupViews() {
        super.setupViews()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.cornerRadius = 64 / 2

        hstack(imageView.withWidth(64).withHeight(64),
               stack(nameLabel, messageLabel, spacing: 4),
               spacing: 12,
               alignment: .center).withMargins(.allSides(16))

        addSeparatorView(leadingAnchor: nameLabel.leadingAnchor)
    }
}



