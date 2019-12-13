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
@property (weak, nonatomic) IBOutlet UILabel *minLabel;
@property (weak, nonatomic) IBOutlet UITextView *recipeTextView;
@property (readwrite) NSInteger index;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

NS_ASSUME_NONNULL_END
