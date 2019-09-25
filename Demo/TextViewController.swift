//
//  TextViewController.swift
//  Toaster
//
//  Created by SeongHo on 25/09/2019.
//  Copyright © 2019 Suyeol Jeon. All rights reserved.
//

import UIKit

final class TextViewController: UIViewController {
    
    private lazy var textView: UITextView = {
        let textView: UITextView = UITextView(frame: .zero)
        textView.text = String(
            repeating: """
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            """,
            count: 20
        )
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(textView)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                NSLayoutConstraint(item: textView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: textView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: textView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
            ]
        )
    }
    
}
