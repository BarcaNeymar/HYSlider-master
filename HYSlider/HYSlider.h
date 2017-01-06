//
//  HYSlider.h
//  HYSlider
//
//  Created by heyang on 16/6/3.
//  Copyright © 2016年 heyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HYSlider;

@protocol HYSliderDelegate <NSObject>

- (void)HYSlider:(HYSlider *)hySlider didScrollValue:(CGFloat)value;

@end


@interface HYSlider : UIView

/**
 *  是否显示触摸视图(圆形触摸视图)
 */
@property (nonatomic) BOOL showTouchView;

/**
 *  触摸视图颜色
 */
@property (nonatomic) UIColor *touchViewColor;

/**
 *  当前数值
 */
@property (nonatomic) CGFloat currentSliderValue;

/**
 *  当前数值颜色
 */
@property (nonatomic) UIColor *currentValueColor;

/**
 *  数值显示颜色
 */
@property (nonatomic) UIColor *showTextColor;

/**
 *  滑块最大取值
 */
@property (nonatomic) CGFloat maxValue;

/**
 *  是否一直隐藏滑动数值显示视图
 */
@property (nonatomic) BOOL showScrollTextView;


/**
 *  协议
 */
@property (nonatomic,weak) id <HYSliderDelegate> delegate;
@end
