//
//  FFViewController.m
//  AFNetwork
//
//  Created by lingyfh on 03/13/2017.
//  Copyright (c) 2017 lingyfh. All rights reserved.
//

#import "FFViewController.h"
@import AFNetwork;

@interface FFViewController ()

@end

@implementation FFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    [params setValue:@"2.00YPc7CC0USQoc16254e6a65ww7wWD" forKey:@"access_token"];
    [[AFNetwork shareManager] requestURL:@"https://api.weibo.com/2/statuses/public_timeline.json"
                                  params:params
                                 success:^(NSURLSessionDataTask *task, NSDictionary *dict) {
                                     NSLog(@"succcess dict = %@", dict);
                                 }
                                 failure:^(NSURLSessionDataTask *task, NSError *error) {
                                     NSLog(@"failure error = %@", error);
                                 }];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
