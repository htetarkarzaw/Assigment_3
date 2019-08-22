//
//  DetailViewController.swift
//  Assigment_3_TalkList
//
//  Created by Htet Arkar Zaw on 8/23/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    static let identifier = "DetailViewController"
    
    var mData : TalkVO!
    @IBOutlet weak var ivProfile: UIImageView!
    @IBOutlet weak var lblSpeach: UILabel!
    @IBOutlet weak var lblSpeaker: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ivProfile.layer.cornerRadius = ivProfile.frame.height/2
        lblSpeaker.text = mData.speakerName
        lblSpeach.text = mData.speach
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
