//
//  ViewController.swift
//  PreonboardWanted
//
//  Created by 곽우종 on 2023/03/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var forthImageView: UIImageView!
    @IBOutlet weak var fiveImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loadFirstImage(_ sender: Any) {
        guard let url = ImageList.coffee.url else {
            return
        }
        
        firstImageView.loadImage(url: url)
    }
    
    @IBAction func loadSecondImage(_ sender: Any) {
        guard let url = ImageList.banana.url else {
            return
        }
        
        secondImageView.loadImage(url: url)
    }
    @IBAction func loadThirdImage(_ sender: Any) {
        guard let url = ImageList.flower.url else {
            return
        }
        
        thirdImageView.loadImage(url: url)
    }
    @IBAction func loadForthImage(_ sender: Any) {
        guard let url = ImageList.fish.url else {
            return
        }
        
        forthImageView.loadImage(url: url)
    }
    @IBAction func loadfiveImage(_ sender: Any) {
        guard let url = ImageList.apple.url else {
            return
        }
        
        fiveImageView.loadImage(url: url)
    }
    @IBAction func loadAllImages(_ sender: Any) {
        loadFirstImage(self)
        loadSecondImage(self)
        loadThirdImage(self)
        loadForthImage(self)
        loadfiveImage(self)
    }
}

extension UIImageView {
    func loadImage(url: URL) {
        var request = URLRequest(url: url)
            request.httpMethod = "GET"

            URLSession.shared.dataTask(with: request) { data, response, error in
                guard
                    let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                    let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                    let data = data, error == nil,
                    let image = UIImage(data: data)
                    else {
                        print("Download image fail : \(url)")
                        return
                }

                DispatchQueue.main.async() {[weak self] in
                    self?.image = image
                }
            }.resume()
    }
}

