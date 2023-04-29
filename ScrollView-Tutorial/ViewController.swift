//
//  ViewController.swift
//  ScrollView-Tutorial
//
//  Created by YouTube on 2023-04-27.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
       let sv = UIScrollView()
        sv.backgroundColor = .systemRed
        return sv
    }()
    
    private let contentView: UIView = {
       let v = UIView()
        v.backgroundColor = .systemPurple
        return v
    }()
    
    private let imageViews: [UIImageView] = {
        var imageViews: [UIImageView] = []
        for x in 1...5 {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFill
            iv.image = UIImage(named: x.description)
            iv.clipsToBounds = true
            imageViews.append(iv)
        }
        return imageViews
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }

    private func setupUI() {
        self.view.backgroundColor = .systemBlue
        
        self.view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        let hConst = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        hConst.isActive = true
        hConst.priority = UILayoutPriority(50)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 10),
            contentView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: -10),
            contentView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor, constant: -20),
        ])
        
        self.view.addSubview(imageViews[0])
        self.view.addSubview(imageViews[1])
        self.view.addSubview(imageViews[2])
        self.view.addSubview(imageViews[3])
        self.view.addSubview(imageViews[4])
        
        imageViews[0].translatesAutoresizingMaskIntoConstraints = false
        imageViews[1].translatesAutoresizingMaskIntoConstraints = false
        imageViews[2].translatesAutoresizingMaskIntoConstraints = false
        imageViews[3].translatesAutoresizingMaskIntoConstraints = false
        imageViews[4].translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            imageViews[0].topAnchor.constraint(equalTo: self.contentView.topAnchor),
            imageViews[0].leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            imageViews[0].trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20),
            imageViews[0].heightAnchor.constraint(equalToConstant: 300),
            imageViews[0].widthAnchor.constraint(equalTo: self.contentView.widthAnchor, constant: -20),
            
            imageViews[1].topAnchor.constraint(equalTo: self.imageViews[0].bottomAnchor),
            imageViews[1].leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            imageViews[1].trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            imageViews[1].heightAnchor.constraint(equalToConstant: 300),
            imageViews[1].widthAnchor.constraint(equalTo: self.contentView.widthAnchor),
            
            imageViews[2].topAnchor.constraint(equalTo: self.imageViews[1].bottomAnchor),
            imageViews[2].leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            imageViews[2].trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            imageViews[2].heightAnchor.constraint(equalToConstant: 300),
            imageViews[2].widthAnchor.constraint(equalTo: self.contentView.widthAnchor),
            
            imageViews[3].topAnchor.constraint(equalTo: self.imageViews[2].bottomAnchor),
            imageViews[3].leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            imageViews[3].trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            imageViews[3].heightAnchor.constraint(equalToConstant: 300),
            imageViews[3].widthAnchor.constraint(equalTo: self.contentView.widthAnchor),
            
            imageViews[4].topAnchor.constraint(equalTo: self.imageViews[3].bottomAnchor),
//            imageViews[4].leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
//            imageViews[4].trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            imageViews[4].centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            imageViews[4].heightAnchor.constraint(equalToConstant: 300),
            imageViews[4].widthAnchor.constraint(equalTo: self.contentView.widthAnchor),
            
            self.imageViews[4].bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
        ])
        
    }

}

