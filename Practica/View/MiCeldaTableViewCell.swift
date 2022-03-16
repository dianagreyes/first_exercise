//
//  MiCeldaTableViewCell.swift
//  Practica
//
//  Created by Diana G Reyes S on 12/03/22.
//

import UIKit

class MiCeldaTableViewCell: UITableViewCell {

    @IBOutlet weak var labelNombre: UILabel!
    @IBOutlet weak var labelRol: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
