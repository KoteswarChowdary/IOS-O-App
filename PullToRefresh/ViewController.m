//
//  ViewController.m
//  PullToRefresh
//
//  Created by APPLE on 22/07/15.
//  Copyright (c) 2015 Saiss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *array123;
  }

@end

@implementation ViewController
@synthesize customTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    customTableView.delegate = self;
    customTableView.dataSource = self;
    
    array123 = [[NSMutableArray alloc]init];
    array123 = self.array;
   
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array123 count];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    
    cell.textLabel.text = [array123 objectAtIndex:indexPath.row];
    return cell;
}


@end
