//
//  RestaurantListView.swift
//  DeliveryAppChallenge
//
//  Created by Rodrigo Borges on 04/02/22.
//

import UIKit

class RestaurantListView: UIView, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView = {
        let tableview = UITableView(frame: .zero, style: .insetGrouped)
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "restaurantCell")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        
        return tableview
    }()
    
    private let cell = RestaurantCell()
    
    func configViews() {
        backgroundColor = .white
    }
    
    func buildViews() {
        addSubview(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "restaurantCell")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RestaurantCell.accessibilityElementCount()
    }
    
    
}
