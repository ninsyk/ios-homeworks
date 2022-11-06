//
//  PostViewController.swift
//  Navigation
//
//  Created by playrix on 06.11.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var dataSource = Post(title: "Название поста")
    @objc
    func tapButton() {
        let infotView = InfoViewController()
        navigationController?.pushViewController(infotView, animated: true)
    }

    // Загрузка вью
    override func loadView() {
        super.loadView()
        title = dataSource.title
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Инфо", style: .plain, target: self, action: #selector(tapButton))
        print(#function)
    }
    
    // срабатывает каждый раз при заходе на экран
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    
    // срабатывает каждый раз после загрузки вью
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }

    // срабатывает после загрузки вью
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        view.backgroundColor = .gray
    }
    
    // срабатывает перед тем как контроллер закроется
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    // срабатывает после того как контроллер закроется
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    // срабатывает при развороте экрана
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(#function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function)
    }
    
    // при удалении контроллера из памяти
    deinit {
        print(#function)
    }
    
}
