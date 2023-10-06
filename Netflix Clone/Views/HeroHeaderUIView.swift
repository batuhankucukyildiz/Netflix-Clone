//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Batuhan Küçükyıldız on 6.10.2023.
//

import UIKit

class HeroHeaderUIView: UIView {

    private let heroUImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroUImageView)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        heroUImageView.frame = bounds
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}


