//
//  ViewController.m
//  OpenURLFirst
//
//  Created by Z.chen on 2018/1/17.
//  Copyright © 2018年 Z.chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)openNextProject:(id)sender {
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"zcNightelf://"]]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"zcNightelf://one?name=TheLordOftheRings"] options:nil completionHandler:^(BOOL success) {
            NSLog(@"嘿，我打开过了");
        }];
    }
}
- (IBAction)openTwo:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"zcNightelf://two?name=ASongOfIceAndFire"] options:nil completionHandler:^(BOOL success) {
        NSLog(@"嘿，我打开过了");
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
