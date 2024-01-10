//
//  TravelTableViewCell.swift
//  SeSacTravelMagazine
//
//  Created by hwijinjeong on 1/8/24.
//

import UIKit

// 프로토콜 프로퍼티 적용
protocol TableViewCellProtocol {
    var identifier: String { get set }
}

class TravelTableViewCell: UITableViewCell {
    var identifier: String = "travelCell"
    
    @IBOutlet weak var travelImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
