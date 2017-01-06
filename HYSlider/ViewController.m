//
//  ViewController.m
//  HYSlider
//
//  Created by heyang on 16/5/31.
//  Copyright © 2016年 heyang. All rights reserved.
//
#import "HYSlider.h"
#import "ViewController.h"

#define TEXTCOLOR [UIColor colorWithRed:41/255.0 green:140/255.0 blue:11/255.0 alpha:1]
#define TEXTFONT [UIFont boldSystemFontOfSize:13.0]
@interface ViewController ()<HYSliderDelegate>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(20, 60, 200, 20)];
    label1.text  = @"/* 样式一 */";
    label1.textColor = TEXTCOLOR;
    label1.font = TEXTFONT;
    [self.view addSubview:label1];
    
    HYSlider *slider1 = [[HYSlider alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 10)];
    slider1.currentValueColor = [UIColor redColor];
    slider1.maxValue = 255;
    slider1.currentSliderValue = 200;
    slider1.showTextColor = [UIColor redColor];
    slider1.showTouchView = YES;
    slider1.showScrollTextView = YES;
    slider1.touchViewColor = [UIColor redColor];
    slider1.delegate = self;
    [self.view addSubview:slider1];
    
    HYSlider *slider2 = [[HYSlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider1.frame)+20, self.view.frame.size.width - 40, 10)];
    slider2.currentValueColor = [UIColor greenColor];
    slider2.maxValue = 255;
    slider2.currentSliderValue = 150;
    slider2.showTouchView = YES;
    slider2.showTextColor = [UIColor greenColor];
    slider2.touchViewColor = [UIColor greenColor];
    slider2.showScrollTextView = YES;
    slider2.delegate = self;
     [self.view addSubview:slider2];
    
    
    HYSlider *slider3 = [[HYSlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider2.frame)+20, self.view.frame.size.width - 40, 10)];
    slider3.currentValueColor = [UIColor blueColor];
    slider3.maxValue = 255;
    slider3.currentSliderValue = 100;
    slider3.showTouchView = YES;
    slider3.showTextColor = [UIColor blueColor];
    slider3.touchViewColor = [UIColor blueColor];
    slider3.showScrollTextView = YES;
    slider3.delegate = self;
    [self.view addSubview:slider3];
    
    
    /** 样式2*/
    
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider3.frame) + 20, 200, 20)];
    label2.text  = @"/* 样式二 */";
    label2.textColor = TEXTCOLOR;
    label2.font = TEXTFONT;
    [self.view addSubview:label2];
    
    
    HYSlider *slider4 = [[HYSlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider3.frame)+60, self.view.frame.size.width - 40, 10)];
    slider4.currentValueColor = [UIColor redColor];
    slider4.maxValue = 255;
    slider4.currentSliderValue = 100;
    slider4.showTouchView = NO;
    slider4.showTextColor = [UIColor whiteColor];
    slider4.delegate = self;
    [self.view addSubview:slider4];
    
    HYSlider *slider5 = [[HYSlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider4.frame)+20, self.view.frame.size.width - 40, 10)];
    slider5.currentValueColor = [UIColor greenColor];
    slider5.maxValue = 255;
    slider5.currentSliderValue = 100;
    slider5.showTouchView = NO;
    slider5.showTextColor = [UIColor whiteColor];
    slider5.delegate = self;
    [self.view addSubview:slider5];
    
    
    HYSlider *slider6 = [[HYSlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider5.frame)+20, self.view.frame.size.width - 40, 10)];
    slider6.currentValueColor = [UIColor blueColor];
    slider6.maxValue = 255;
    slider6.currentSliderValue = 100;
    slider6.showTouchView = NO;
    slider6.showTextColor = [UIColor whiteColor];
    slider6.delegate = self;
    [self.view addSubview:slider6];

    
    /** 样式3*/
    
    
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider6.frame) + 20, 200, 20)];
    label3.text  = @"/* 样式三 */";
    label3.textColor = TEXTCOLOR;
    label3.font = TEXTFONT;
    [self.view addSubview:label3];
    
    
    HYSlider *slider7 = [[HYSlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider6.frame)+60, self.view.frame.size.width - 40, 10)];
    slider7.currentValueColor = [UIColor redColor];
    slider7.maxValue = 255;
    slider7.currentSliderValue = 100;
    slider7.showTouchView = YES;
    slider7.showTextColor = [UIColor redColor];
    slider7.touchViewColor = [UIColor redColor];
    slider7.delegate = self;
    [self.view addSubview:slider7];
    
    HYSlider *slider8 = [[HYSlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider7.frame)+20, self.view.frame.size.width - 40, 10)];
    slider8.currentValueColor = [UIColor greenColor];
    slider8.maxValue = 255;
    slider8.currentSliderValue = 150;
    slider8.showTouchView = YES;
    slider8.showTextColor = [UIColor greenColor];
    slider8.touchViewColor = [UIColor greenColor];
    slider8.delegate = self;
    [self.view addSubview:slider8];
    
    
    HYSlider *slider9 = [[HYSlider alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(slider8.frame)+20, self.view.frame.size.width - 40, 10)];
    slider9.currentValueColor = [UIColor blueColor];
    slider9.maxValue = 255;
    slider9.currentSliderValue = 200;
    slider9.showTouchView = YES;
    slider9.showTextColor = [UIColor blueColor];
    slider9.touchViewColor = [UIColor blueColor];
    slider9.delegate = self;
    [self.view addSubview:slider9];
    
    
    
    
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake((self.view.bounds.size.width - 200)/2, CGRectGetMaxY(slider9.frame) + 20, 200, 200)];
    label4.text  = @"/*\n\n个性定制化Slider(可触摸滑动)\n\n   -by YounG 2016\n\n*/";
    label4.textColor = [UIColor blackColor];
    label4.numberOfLines = 0;
    label4.textAlignment = NSTextAlignmentCenter;
    label4.font = TEXTFONT;
    [self.view addSubview:label4];

    
    
    
}

- (void)HYSlider:(HYSlider *)hySlider didScrollValue:(CGFloat)value{
    
    NSLog(@"%f",value);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
