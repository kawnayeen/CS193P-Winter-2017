//
//  DemoURL.swift
//  Cassini
//
//  Created by Kawnayeen on 1/29/18.
//  Copyright © 2018 Kawnayeen. All rights reserved.
//

import Foundation

struct DemoURL {
    static let standford = URL(string: "https://s3-us-west-1.amazonaws.com/stanford.ucomm.newsms.media/wp-content/uploads/2016/03/30160018/Stanford_News_hero_image.jpg")
    
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = [
            "Cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
