//
//  ImageViewController.swift
//  Cassini
//
//  Created by Kawnayeen on 1/29/18.
//  Copyright © 2018 Kawnayeen. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController{
    var imageURL : URL? {
        didSet {
            image = nil
            if view.window != nil {
                fetchImage()
            }
        }
    }
    
    private func fetchImage() {
        if let url = imageURL {
            DispatchQueue.global(qos: .userInitiated).async { [weak self] in
                let urlContents = try? Data(contentsOf: url)
                if let imageData = urlContents {
                    self?.image = UIImage(data: imageData)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if image == nil {
            fetchImage()
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.delegate = self
            scrollView.minimumZoomScale = 0.3
            scrollView.maximumZoomScale = 1.25
            scrollView.contentSize = imageView.frame.size
            scrollView.addSubview(imageView)
        }
    }
    fileprivate var imageView = UIImageView()
    
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
        }
    }
}

extension ImageViewController : UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
