//
//  ProfileViewController.swift
//  Netology_IB_Instruments_1
//
//  Created by Захар Кисляк on 16.09.2022.
//

import UIKit

class ProfileViewController: UIView {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setUp()
    }
    
    private func setUp () {
        let view = self.loadViewFromXib()
       self.addSubview(view)
       view.frame = self.bounds
    }
    
    private func loadViewFromXib () -> UIView {
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: ProfileView().self)?.first as? UIView else {
            return UIView()
        } 
           
        return view
    }
}

