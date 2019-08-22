//
//  TalkTableViewCell.swift
//  Assigment_3_TalkList
//
//  Created by Htet Arkar Zaw on 8/23/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class TalkTableViewCell: UITableViewCell {

    static let identifier = "TalkTableViewCell"
    
    @IBOutlet weak var lblSpeaker: UILabel!
    @IBOutlet weak var lblSpeach: UILabel!
    var mTalk : TalkVO!{
        didSet{
            lblSpeach.text = "\"\(mTalk.speach)\""
            lblSpeaker.text = "-\(mTalk.speakerName)"
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
