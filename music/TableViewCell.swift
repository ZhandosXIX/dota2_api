//
//  TableViewCell.swift
//  music
//
//  Created by zhandos on 31.01.2024.
//

import UIKit
import SDWebImage
class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var Picture: UIImageView!
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var attack: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(player: person){
        Name.text = player.localized_name
        attack.text = player.attack_type
      //  Picture.sd_setImage(with: URL(string: player.img), completed: nil) // было так потом оказывается наадо добавить перед полную ссылку
        Picture.sd_setImage(with: URL(string: "https://cdn.dota2.com" + player.img), completed: nil)
        
    }
}
