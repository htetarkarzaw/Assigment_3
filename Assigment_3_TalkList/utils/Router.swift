//
//  Router.swift
//  Assigment_3_TalkList
//
//  Created by Htet Arkar Zaw on 8/23/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func navigateToTalkDetails(mData:TalkVO){
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let vc = storyBoard.instantiateViewController(withIdentifier: STORY_ID_TALK_DETAILS) as? DetailViewController
        vc?.mData = mData
        if let viewController = vc{
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        
}
}
