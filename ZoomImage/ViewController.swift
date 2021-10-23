//
//  ViewController.swift
//  ZoomImage
//
//  Created by Lakith Jayalath on 2021-10-23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScrollView()
    }
    
    func setUpScrollView() {
        scrollView.delegate = self
    }
    
}

extension ViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}

