//
//  menuTableViewCell.swift
//  CakeShop
//
//  Created by Yeni Hwang on 2021/12/02.
//

import UIKit

class menuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var menuImageView: UIImageView?
    @IBOutlet weak var menuTextLabel: UILabel?

    func inputMenuDataToCell(data: Menu) {
        menuImageView?.image = data.menuImage
        menuTextLabel?.text = data.menuName
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
