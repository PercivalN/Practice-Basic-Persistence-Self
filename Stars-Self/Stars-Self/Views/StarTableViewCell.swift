//
//  StarTableViewCell.swift
//  Stars-Self
//
//  Created by Percy Ngan on 12/26/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class StarTableViewCell: UITableViewCell {

	var star: Star? {
		didSet {
			updateViews()
		}
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
