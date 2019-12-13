//
//  AboutUsViewController.h
//  RecipeBook
//
//  Created by Mykhailo Bondarenko on 13.12.2019.
//  Copyright © 2019 Mykhailo Bondarenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AboutUsViewController : UIViewController

@property (weak, nonatomic) IBOutlet WKWebView *wkWebView;


@end

NS_ASSUME_NONNULL_END
