//
//  testHUD.m
//  TestProject
//
//  Created by Cycle on 16/5/5.
//  Copyright © 2016年 Cycle. All rights reserved.
//  dd

#import "testHUD.h"

#define ScreenW [UIScreen mainScreen].bounds.size.width
#define testFont [UIFont systemFontOfSize:13]
@implementation testHUD
/***窗口*/
static UIWindow *window_;
/**时间*/
static NSTimer *timer_;
/***加载窗口*/
+ (void)LoadWindow{
    //2.添加动画(改变y值，开始为－20)
    CGFloat windowH=20;
    CGRect windowRect = CGRectMake(0, -windowH, ScreenW, windowH);
    
    
    window_.hidden = YES;
    
    window_ = [[UIWindow alloc]init];
    window_.frame = windowRect;
    window_.backgroundColor = [UIColor blackColor];
    //设置窗口等级
    window_.windowLevel = UIWindowLevelAlert;
    window_.hidden = NO;
    
    //2.1 改变y值
    windowRect.origin.y = 0;
    [UIView animateWithDuration:0.3 animations:^{
        window_.frame = windowRect;
    }];
}

/**
 * 显示普通信息
 * @param msg       文字
 * @param image     图片
 */
+ (void)showMessage:(NSString *)msg image:(UIImage *)image{
    [self LoadWindow];
    
    //当点击一个后点另外一个的时候需要暂停第一个的
    [timer_ invalidate];
    
//    NSLog(@"image:%@   ------  msg : --- %@",image,msg);
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:msg forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.titleLabel.font =testFont;
    
    //有图片
    if (image) {
        [btn setImage:image forState:UIControlStateNormal];
        [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 10, 0, 0)];
    }
    
    btn.frame = window_.bounds;
    [window_ addSubview:btn];
    
    
    ///2.2 点了之后几秒钟又离开
    timer_ = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(hide) userInfo:nil repeats:NO];
}
/**
 * 显示普通信息
 */
+ (void)showMessage:(NSString *)msg{
    [self showMessage:@"显示普通信息" image:nil];
}
/**
 * 显示成功信息
 */
+ (void)showSuccess:(NSString *)msg{
    [self showMessage:@"显示成功" image:[UIImage imageNamed:@"testHUD.bundle/success"]];
}
/**
 * 显示失败信息
 */
+ (void)showError:(NSString *)msg{
    [self showMessage:@"显示失败" image:[UIImage imageNamed:@"testHUD.bundle/error"]];
}
/**
 * 显示正在处理的信息
 */
+ (void)showLoading:(NSString *)msg{
    [self LoadWindow];
    [timer_ invalidate];
    timer_ = nil;
    
    UILabel *lbl = [[UILabel alloc]init];
    lbl.text = @"正在加载..";
    lbl.textColor = [UIColor whiteColor];
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.font = testFont;
    lbl.frame = window_.bounds;
    [window_ addSubview:lbl];
    
    //加一个加载控件
    UIActivityIndicatorView *indicate = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    //启动动画
    [indicate startAnimating];
    //算出文字的宽度
    CGFloat lblWidth = [lbl.text sizeWithAttributes:@{NSFontAttributeName:testFont}].width;
//    NSLog(@"%f",lblWidth);
    CGFloat indicateX = (ScreenW - lblWidth)*0.5-20;
    CGFloat indicateY = window_.frame.size.height*0.5;
    indicate.center = CGPointMake(indicateX, indicateY);
//    indicate.backgroundColor = [UIColor redColor];
    [window_ addSubview:indicate];
}

/**隐藏*/
+(void)hide{
    
    //2.3 在离开的时候 先还原到原来位置在消失
    [UIView animateWithDuration:0.5 animations:^{
        CGRect rect = window_.frame;
        rect.origin.y-=20;
        window_.frame = rect;
    } completion:^(BOOL finished) {
        window_ = nil;
        timer_ = nil;
    }];
    
}


@end
