//
//  CarrotsTableViewCell.swift
//  Hashtag
//
//  Created by Vivek Patel on 27/07/24.
//

import UIKit

class CarrotsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var btnTopUp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    private func setUI() {
        lblTitle.font = UIFont.Arimo.regular.size(16)
        lblPrice.font = UIFont.Arimo.arimoItalic.size(11)
        btnTopUp.font = UIFont.Arimo.arimoBold.size(14)
    }
}
