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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
