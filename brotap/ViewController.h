//
//  ViewController.h
//  brotap
//
//  Created by Dan Kang on 6/23/13.
//  Copyright (c) 2013 brotap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

// fbWebView
@property (strong, nonatomic) IBOutlet UIWebView *fbWebView;


// toggleButton
@property (strong, nonatomic) IBOutlet UIButton *toggleButton;

@end
