//
//  ContactsTableViewCell.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 24.01.2022.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    let contactImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "contact")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true // для того, чтобы обрезать края
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let phoneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "phone.fill")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let mailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "envelope.fill")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel = UILabel(text: "Cruella De Vil", font: .avenirNext20())
    let phoneLabel = UILabel(text: "+7 777 54 83 73", font: .avenirNext14())
    let mailLabel = UILabel(text: "CruellaDeVil@mail.ru", font: .avenirNext14())
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        contactImageView.layer.cornerRadius = contactImageView.frame.height / 2
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        contentView.addSubview(contactImageView)
        NSLayoutConstraint.activate([
            contactImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            contactImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            contactImageView.heightAnchor.constraint(equalToConstant: 70),
            contactImageView.widthAnchor.constraint(equalToConstant: 70),
        ])
        contentView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            nameLabel.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            nameLabel.heightAnchor.constraint(equalToConstant: 21),
        ])
        
        let stackView = UIStackView(arrangedSubviews: [phoneImageView, phoneLabel, mailImageView, mailLabel], axis: .horizontal, spacing: 3, distribution: .fillProportionally)
        
        contentView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            stackView.heightAnchor.constraint(equalToConstant: 21),
        ])
    }
}
