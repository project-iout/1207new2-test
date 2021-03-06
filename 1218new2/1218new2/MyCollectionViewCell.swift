//
//  MyCollectionViewCell.swift
//  1218new2
//
//  Created by Yu-Liang Chou  on 2017/12/18.
//  Copyright © 2017年 aa. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    var images:[UIImage]?
 
    var myCellSize:CGSize?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (images?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "displayedImageCell", for: indexPath) as? ImageCollectionViewCell
        
        cell?.displayedImage.image = images?[indexPath.item]
        return cell!
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print("my width = \(myCellSize?.width), my height=\(myCellSize?.height)")
        return self.myCellSize!
    }
    
    @IBOutlet var insideCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awake from nib")
        insideCollectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "displayedImageCell")
        insideCollectionView.delegate  = self
        insideCollectionView.dataSource = self
    }

}
