//
//  TableViewCell.swift
//  TableViewWithSlider
//
//  Created by MAC0008 on 09/03/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblSliderTitle: UILabel!
    @IBOutlet weak var sliderVal: UISlider!
    @IBOutlet weak var lblSliderValue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
