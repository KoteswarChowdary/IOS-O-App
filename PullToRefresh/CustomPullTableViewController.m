//
//  CustomPullTableViewController.m
//  PullToRefresh
//
//  Created by APPLE on 22/07/15.
//  Copyright (c) 2015 Saiss. All rights reserved.
//

#import "CustomPullTableViewController.h"
#import "ViewController.h"

@interface CustomPullTableViewController ()
{
    NSMutableArray *arr;

}

@end

@implementation CustomPullTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     arr = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
    
    // Todisplay data in table view table
    
    // Refresh controller are added
    
    
   
    
    
    UIRefreshControl *refresh = [[UIRefreshControl alloc] init];
    
    refresh.attributedTitle = [[NSAttributedString alloc] initWithString:@"Pull to Refresh"];
     refresh.tintColor = [UIColor redColor];
    
    
    
    [refresh addTarget:self action:@selector(crunchNumbers)
     
      forControlEvents:UIControlEventValueChanged];
    
    
    
    self.refreshControl = refresh;
    
   // testNumbers = [[NSMutableArray alloc] init];
    
   // [self crunchNumbers];

   
}

- (void)crunchNumbers

{
    NSLog(@"calling crunchNumbers ");
    
    [arr removeAllObjects];
    
    for (int i = 20; i < 30; i++) {
        
        float x = rand();
        
       // [arr addObject:[NSNumber numberWithFloat:x]];
        
        [arr addObject:[NSString stringWithFormat:@"%f",x]];
        
    }
    
    
    
    
    
    [self performSelector:@selector(stopRefresh) withObject:nil afterDelay:2.5];
    
}
- (void)stopRefresh

{
    NSLog(@"calling stopRefresh ");
    
    [self.refreshControl endRefreshing];
    [self.tableView reloadData];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [arr count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
   
    
    cell.textLabel.text = [arr objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UITableViewCell class]]) {
        if ([segue.destinationViewController isKindOfClass:[ViewController class]]) {
            ViewController *vc = segue.destinationViewController;
            vc.array = arr;
        }
    }
}



@end
