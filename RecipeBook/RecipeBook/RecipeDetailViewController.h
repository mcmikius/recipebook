//
//  RecipeDetailViewController.h
//  RecipeBook
//
//  Created by Mykhailo Bondarenko on 13.12.2019.
//  Copyright © 2019 Mykhailo Bondarenko. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RecipeDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *recipeLabel;
@property (strong, nonatomic) NSString *recipeName;

@end

NS_ASSUME_NONNULL_END
