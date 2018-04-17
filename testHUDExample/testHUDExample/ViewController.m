//
//  ViewController.m
//  testHUD
//
//  Created by Cycle on 16/5/6.
//  Copyright © 2016年 Cycle. All rights reserved.
//

#import "ViewController.h"
#import "testHUD.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)success {
    NSLog(@"成功");
    [testHUD showSuccess:@"成功"];
}
- (IBAction)failure{
    NSLog(@"失败");
    [testHUD showError:@"失败"];
}
- (IBAction)loading {
    NSLog(@"加载");
    [testHUD showLoading:@"加载"];
}
- (IBAction)hide {
    NSLog(@"隐藏");
    [testHUD hide];
}


@end
