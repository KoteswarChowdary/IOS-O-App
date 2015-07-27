//
//  ViewController.h
//  PullToRefresh
//
//  Created by APPLE on 22/07/15.
//  Copyright (c) 2015 Saiss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *customTableView;
@property(nonatomic,strong)NSMutableArray *array;


@end

