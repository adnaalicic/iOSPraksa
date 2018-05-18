//
//  ViewController.m
//  prvaapp
//
//  Created by Atlantbh Guest on 16/05/2018.
//  Copyright © 2018 Atlantbh Guest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *items;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //popunit cu sad tabelu obicnih stringovima dok ne uradim za api
    
    self.items = @[@{@"name":@"ime1",@"shortDesc":@"shortDecs1", @"actors":@"actors1"}].mutableCopy;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View datasource

- (NSInteger) numberOfSectionsInTableView: (UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static  NSString *CellIdentifier = @"ItemRow";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    NSDictionary *item = self.items[indexPath.row];
    //ne mogu da skontam kako da pristupim labeli 
    cell.textLabel.text = item[@"name"];
    static NSString *LabelIdentifier = @"Label1";
    
    return cell;
}


@end
