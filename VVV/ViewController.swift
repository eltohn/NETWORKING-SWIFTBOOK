//
//  ViewController.swift
//  VVV
//
//  Created by Elbek Shaykulov on 25/08/21.
//

import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {
    
    let imageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PRESS to load the image", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
    }
    
    func makeUI(){
        view.backgroundColor = .white
        view.addSubview(imageView)
        view.addSubview(button)
        
        
        imageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed(){
        
        guard let url = URL(string: "https://swiftbook.ru//wp-content/uploads/api/api_courses") else { return }
        
        AF.request(url).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                print(value)
                
               
                
            case .failure(let error):
                print(error)
            }
        }
    }
}





