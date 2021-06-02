//
//  ViewController.swift
//  Test
//
//  Created by 김종권 on 2021/06/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let path = Bundle.main.path(forResource: "mock", ofType: "json") else {
            return
        }
        guard let jsonString = try? String(contentsOfFile: path) else {
            return
        }

        let decoder = JSONDecoder()
        let data = jsonString.data(using: .utf8)
        if let data = data,
           let person = try? decoder.decode([PersonModel].self, from: data) {
            print(person.first?.addressInfo)
        }

        // MARK: - cf) Encode

        let dataModel = PersonModel(name: "sample", addressInfo: .init(contry: "contry", city: "city"), image: "03")
        let encoder = JSONEncoder()
        if let jsonData = try? encoder.encode(dataModel),
           let jsonString = String(data: jsonData, encoding: .utf8) {
            print(jsonString)
        }
    }
}

