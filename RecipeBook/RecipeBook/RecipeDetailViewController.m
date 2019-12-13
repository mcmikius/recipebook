//
//  RecipeDetailViewController.m
//  RecipeBook
//
//  Created by Mykhailo Bondarenko on 13.12.2019.
//  Copyright © 2019 Mykhailo Bondarenko. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController
@synthesize recipeName;
@synthesize recipeLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    recipeLabel.text = recipeName;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
