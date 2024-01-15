//
//  TravelTableViewCell.swift
//  SeSacTravelMagazine
//
//  Created by hwijinjeong on 1/8/24.
//

import UIKit

class TravelTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var travelImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = .clear
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
