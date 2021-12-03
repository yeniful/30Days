//
//  LabTableViewCell.swift
//  Stopwatch
//
//  Created by Yeni Hwang on 2021/12/03.
//

import UIKit

class LabTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellLabLabel: UILabel!
    @IBOutlet weak var cellTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
