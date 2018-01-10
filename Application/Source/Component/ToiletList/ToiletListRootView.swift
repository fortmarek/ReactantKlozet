//
//  ToiletListRootView.swift
//  ReactantKlozet
//
//  Created by Marek Fořt on 1/10/18.
//  Copyright © 2018 Marek Fořt. All rights reserved.
//

import Reactant

final class ToiletListRootView: PlainTableView<ToiletCell> {
    
    override var edgesForExtendedLayout: UIRectEdge {
        return .all
    }
    
    init() {
        super.init(cellFactory: ToiletCell.init, reloadable: false)
        
        tableView.rowHeight = ToiletCell.height
        tableView.separatorStyle = .none
        tableView.tableFooterView = UIView()
        tableView.contentInset.bottom = 12
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
