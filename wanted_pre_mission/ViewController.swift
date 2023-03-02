//
//  ViewController.swift
//  wanted_pre_mission
//
//  Created by 박다혜 on 2023/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var urlGroup: [ImageSource] = [
        ImageSource(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbc.com%2Fkorean%2Fnews-46312563&psig=AOvVaw0i79nNR-0AGyJ0MNmVhxMi&ust=1677762227682000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLiNl77luv0CFQAAAAAdAAAAABAE"),
        ImageSource(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbc.com%2Fkorean%2Fnews-46312563&psig=AOvVaw0i79nNR-0AGyJ0MNmVhxMi&ust=1677762227682000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLiNl77luv0CFQAAAAAdAAAAABAE"),
        ImageSource(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbc.com%2Fkorean%2Fnews-46312563&psig=AOvVaw0i79nNR-0AGyJ0MNmVhxMi&ust=1677762227682000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLiNl77luv0CFQAAAAAdAAAAABAE"),
        ImageSource(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbc.com%2Fkorean%2Fnews-46312563&psig=AOvVaw0i79nNR-0AGyJ0MNmVhxMi&ust=1677762227682000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLiNl77luv0CFQAAAAAdAAAAABAE"),
        ImageSource(imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbc.com%2Fkorean%2Fnews-46312563&psig=AOvVaw0i79nNR-0AGyJ0MNmVhxMi&ust=1677762227682000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLiNl77luv0CFQAAAAAdAAAAABAE")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urlGroup.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImageDownloadCollectionViewCell else { return UICollectionViewCell() }
        
        cell.backgroundColor = .systemPink
    
    
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }
}
