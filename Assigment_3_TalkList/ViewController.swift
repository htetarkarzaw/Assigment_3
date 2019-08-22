//
//  ViewController.swift
//  Assigment_3_TalkList
//
//  Created by Htet Arkar Zaw on 8/22/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvTalk: UITableView!
    var mData : [TalkVO] = TalkVO.getTalks()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvTalk.dataSource = self
        tvTalk.delegate = self
        let customCell = UINib(nibName: TalkTableViewCell.identifier, bundle: nil)
        tvTalk.register(customCell, forCellReuseIdentifier: TalkTableViewCell.identifier)
        mData.append(contentsOf: TalkVO.getTalks())
        mData.append(contentsOf: TalkVO.getTalks())
    }


}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TalkTableViewCell.identifier, for: indexPath) as! TalkTableViewCell
        cell.mTalk = mData[indexPath.row]
        return cell
    }
    
    
    
    
}

extension ViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateToTalkDetails(mData: mData[indexPath.row])
    }
}

