//
//  ViewController.m
//  brotap
//
//  Created by Dan Kang on 6/23/13.
//  Copyright (c) 2013 brotap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)toggleButtonClick:(id)sender {
    if (_fbWebView.hidden == NO) {
        _fbWebView.hidden = YES;
    }
    else {
        _fbWebView.hidden = NO;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
    _fbWebView.delegate = self;
    //_fbWebView.hidden = YES;

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *fullURL = @"http://m.facebook.com/danield";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_fbWebView loadRequest:requestObj];

}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSString *addFriend = [webView stringByEvaluatingJavaScriptFromString:@""
                           "var brotap_url = document.querySelectorAll('div[data-sigil=\"add-friend-button-wrapper\"] a')[0].href;"
                           
                           "function brotap_addFriend(brotap_url) {"
                           "	var req = new XMLHttpRequest();"
                           "	req.open('GET', brotap_url, false);"
                           "	req.send(null);"
                           "	if(req.status == 200)"
                           "		return \"yes\";"
                           "	else"
                           "		return \"no\";"
                           "}"
                           "brotap_addFriend(brotap_url);"];
    NSLog(@"addFriend: %@", addFriend);

    NSHTTPCookie *cookie;
    NSHTTPCookieStorage *cookieJar = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    for (cookie in [cookieJar cookies]) {
        NSLog(@"%@", cookie);
    }
}

@end

