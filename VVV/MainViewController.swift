//
//  MainViewController.swift
//  VVV
//
//  Created by Elbek Shaykulov on 03/09/21.
//

import UIKit
import SnapKit
import Alamofire

class MainViewController: UIViewController {
    
    private let scroll = UIScrollView()
    
    private let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.setTitle("GET REQUEST", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        return button
    }()
    
    private let postButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.setTitle("POST REQUEST", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        return button
    }()
    
    private let downloadButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.setTitle("DOWNLOAD IMAGE", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        return button
    }()
    
    private let uploadButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.setTitle("UPLOAD IMAGE", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        return button
    }()
    
    private let ourCourcesButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.setTitle("OUR COURCES", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    func makeUI(){
        view.backgroundColor = .lightGray
    
        //MARK:- ADDING SUBVIEWS
        view.addSubview(scroll)
        
        scroll.addSubview(getButton)
        scroll.addSubview(postButton)
        scroll.addSubview(downloadButton)
        scroll.addSubview(uploadButton)
        scroll.addSubview(ourCourcesButton)
        
        
        //MARK:- CONSTRAINTS
        scroll.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        getButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
            //make.top.equalToSuperview().inset(30)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(30)
        }
        
        postButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
            make.top.equalTo(getButton.snp.bottom).offset(30)
        }
        
        downloadButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
            make.top.equalTo(postButton.snp.bottom).offset(30)
        }
        
        uploadButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
            make.top.equalTo(downloadButton.snp.bottom).offset(30)
        }
        
        ourCourcesButton.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
            make.top.equalTo(uploadButton.snp.bottom).offset(900)
            make.bottom.equalTo(scroll.snp.bottom).inset(-30)
        }
    }
}
