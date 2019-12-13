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
    if (_index == 0) {
        _minLabel.text = @"30 minutes";
        _recipeTextView.text = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
        _imageView.image = [UIImage imageNamed:@"meal-prep"];
    } else if (_index == 1) {
        _minLabel.text = @"50 minutes";
        _recipeTextView.text = @"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
        _imageView.image = [UIImage imageNamed:@"breakfast"];
    } else if (_index == 2) {
        _minLabel.text = @"10 minutes";
        _recipeTextView.text = @"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.";
        _imageView.image = [UIImage imageNamed:@"meal"];
    } else if (_index == 3) {
        _minLabel.text = @"40 minutes";
        _recipeTextView.text = @"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
        _imageView.image = [UIImage imageNamed:@"veganpowerbowls"];
    }
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
