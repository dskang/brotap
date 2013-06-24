//
//  ViewController.h
//  brotap
//
//  Created by Dan Kang on 6/23/13.
//  Copyright (c) 2013 brotap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *fbWebView;
@property (weak, nonatomic) IBOutlet UIButton *toggleButton;

@end
