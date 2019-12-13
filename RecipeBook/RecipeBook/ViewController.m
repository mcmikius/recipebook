//
//  ViewController.m
//  RecipeBook
//
//  Created by Mykhailo Bondarenko on 13.12.2019.
//  Copyright © 2019 Mykhailo Bondarenko. All rights reserved.
//

#import "ViewController.h"
#import "RecipeDetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray *recipes;
    NSArray *searchResults;
}
@synthesize tableView;
@synthesize searchBar;

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    recipes = [NSArray arrayWithObjects:@"French meat", @"Salmon steak", @"Napoleon cake", @"Vegateble soup", nil];
    
}
- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
- (void)filterContentForSearchText:(NSString *)searchText scope: (NSString*)scope {
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"SELF contains[cd] %@", searchText];
    searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
}

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString: (NSString *)searchString {
    [self filterContentForSearchText:searchString scope:[[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex: [self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    return YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
    } else {
        return recipes.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdetifier = @"SimpleTableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdetifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdetifier];
    }
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [searchResults objectAtIndex:indexPath.row];
        if (indexPath.row == 0) {
            cell.imageView.image = [UIImage imageNamed:@"meal-prep"];
        } else if (indexPath.row == 1) {
            cell.imageView.image = [UIImage imageNamed:@"breakfast"];
        } else if (indexPath.row == 2) {
            cell.imageView.image = [UIImage imageNamed:@"meal"];
        } else if (indexPath.row == 3) {
            cell.imageView.image = [UIImage imageNamed:@"veganpowerbowls"];
        }
    } else {
        cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
        if (indexPath.row == 0) {
            cell.imageView.image = [UIImage imageNamed:@"meal-prep"];
        } else if (indexPath.row == 1) {
            cell.imageView.image = [UIImage imageNamed:@"breakfast"];
        } else if (indexPath.row == 2) {
            cell.imageView.image = [UIImage imageNamed:@"meal"];
        } else if (indexPath.row == 3) {
            cell.imageView.image = [UIImage imageNamed:@"veganpowerbowls"];
        }
    }
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        [self performSegueWithIdentifier:@"showRecipeDetail" sender:self];
    }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        
        RecipeDetailViewController *recipeDetailViewController = segue.destinationViewController;
        NSIndexPath *indexPath = nil;
        if ([self.searchDisplayController isActive]) {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            recipeDetailViewController.recipeName = [searchResults objectAtIndex:indexPath.row];
            recipeDetailViewController.index = indexPath.row;
        } else {
            indexPath = [self.tableView indexPathForSelectedRow];
            recipeDetailViewController.recipeName = [recipes objectAtIndex:indexPath.row];
            recipeDetailViewController.index = indexPath.row;
        }
        
    }
}


@end
