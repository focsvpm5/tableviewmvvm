//
//  TodoitemTableViewCell.swift
//  tableviewmvvm
//
//  Created by Apple Macintosh on 6/9/18.
//  Copyright © 2018 Apple Macintosh. All rights reserved.
//

import UIKit

class TodoitemTableViewCell: UITableViewCell {

    @IBOutlet weak var txtindex: UILabel!
    @IBOutlet weak var txtTodoItem: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    /*!
      * @discussion This function is to configure your cell using view model
      * @params viewModel
      * @return Void
      */
    func configure(withViewModel viewModel: TodoItemPresentable) -> (Void) {
        
        
        txtindex.text = viewModel.id!
        txtTodoItem.text = viewModel.textValue!
    }

}

