//
//  ToiletListRootView.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/10/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class ToiletListRootView: ViewBase<[Toilet], Toilet>  {
    
    let tableView: PlainTableView<ToiletCell> = PlainTableView(cellFactory: ToiletCell.init, reloadable: false)
    
    override init() {
        tableView.rowHeight = ToiletCell.height
        tableView.separatorStyle = .none
        tableView.footerView = UIView()
        tableView.tableView.contentInset.bottom = 12
        super.init()
    }
    
    override func update() {
        tableView.componentState = .items(componentState)
    }
    
}
