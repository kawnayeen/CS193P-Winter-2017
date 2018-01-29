//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Kawnayeen on 1/29/18.
//  Copyright © 2018 Kawnayeen. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination.contents as? ImageViewController) {
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
            }
        }
    }
}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        }
        return self
    }
}
