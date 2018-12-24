//
//  ImageStore.swift
//  Homepwner
//
//  Created by Mayank Kishore on 12/24/18.
//  Copyright © 2018 Mayank Kishore. All rights reserved.
//

import UIKit

class ImageStore {
    let cache = NSCache<NSString,UIImage>()
    
    func setImage(_ image: UIImage, forKey key: String) { // used to set the image
        cache.setObject(image, forKey: key as NSString)
    }
    func image(forKey key: String) -> UIImage? { // used to store the image
        return cache.object(forKey: key as NSString)
    }
    func deleteImage(forKey key: String) { // used to delete the image
        cache.removeObject(forKey: key as NSString)
    }
}
