//
//  ProductTableViewCell.swift
//  DezervTest
//
//  Created by Heramb on 13/12/21.
//

import UIKit
import SDWebImage

class ProductTableViewCell: UITableViewCell {

    // MARK: - Outletes
    @IBOutlet weak var productImgView: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Cell Setup
    func configure(selectedProduct: ProductResponse) {
        productImgView.sd_setImage(with: URL(string: selectedProduct.image ?? ""), placeholderImage: UIImage(named: "AlbumPlaceholder"))
        productTitleLabel.text = selectedProduct.title
        priceLabel.text = "\(selectedProduct.price) ₹"
        categoryLabel.text = selectedProduct.category?.capitalized
        
    }

}
