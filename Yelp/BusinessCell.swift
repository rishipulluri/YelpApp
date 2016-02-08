//
//  BusinessCell.swift
//  Yelp
//
//  Created by saritha on 2/7/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewcount: UILabel!
    @IBOutlet weak var mainimage: UIImageView!
    @IBOutlet weak var rating: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    var business: Business!{
    didSet {
    TitleLabel.text = business.name
        mainimage.setImageWithURL(business.imageURL!)
        categoriesLabel.text = business.categories
        addressLabel.text = business.address
        reviewcount.text = "\(business.reviewCount!)Reviews"
        rating.setImageWithURL(business.ratingImageURL!)
        distanceLabel.text = business.distance
        
    
    }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainimage.layer.cornerRadius = 3
        mainimage.clipsToBounds = true
        TitleLabel.preferredMaxLayoutWidth = TitleLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        TitleLabel.preferredMaxLayoutWidth = TitleLabel.frame.size.width
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
