//
//  ViewController.swift
//  1212new5
//
//  Created by Yu-Liang Chou  on 2017/12/12.
//  Copyright © 2017年 aa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let images = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"]
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as? MyCollectionViewCell
        cell?.MyPhoto.image = UIImage(named:
        images[indexPath.item])
        return cell!
       
    }
    
    @IBOutlet var myColloctionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        myColloctionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellID")
        myColloctionView.register(UINib(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CellID")
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

