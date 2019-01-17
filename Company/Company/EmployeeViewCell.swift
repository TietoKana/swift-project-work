//
//  EmployeeViewCell.swift
//  Company
//
//  Created by Patricia Paavilainen on 22/01/18.
//  Copyright © 2018 Patricia Paavilainen. All rights reserved.
//

import UIKit

class EmployeeViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var faceImage: UIImageView!
    
    var employee: Employee? {
        didSet {
            guard let employee = employee else {return}
            
            nameLabel.text = employee.fname! + " " + employee.lname!
            departmentLabel.text = employee.dname
            
            let url = URL(string: Api.companyImageUrl + employee.image!)
            if let data = try? Data(contentsOf: url!){
                faceImage.image = UIImage(data: data)
            }
        }
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
