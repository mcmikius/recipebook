//
//  ViewController.m
//  RecipeBook
//
//  Created by Mykhailo Bondarenko on 13.12.2019.
//  Copyright © 2019 Mykhailo Bondarenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray * recipes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    recipes = [NSArray arrayWithObjects:@"French meat", @"Salmon steak", @"Napoleon cake", @"Vegateble soup", nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return recipes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdetifier = @"SimpleTableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdetifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdetifier];
        
    }
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"meal"];
    return cell;
}


@end
