//
//  HYSlider.m
//  HYSlider
//
//  Created by heyang on 16/6/3.
//  Copyright © 2016年 heyang. All rights reserved.
//

#import "HYSlider.h"
@interface HYSlider ()
@property (nonatomic,strong) UIView *leftView;
@property (nonatomic,strong) UIView *scrollShowTextView;
@property (nonatomic,strong) UILabel *textLabel;
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UILabel *scrollShowTextLabel;
@property (nonatomic,strong) UIView *touchView;
@property (nonatomic) CGFloat hyMaxValue;
@end
@implementation HYSlider



- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setCurrentSliderValue:(CGFloat)currentSliderValue
{
    _currentSliderValue = currentSliderValue;
    
    _leftView.frame = CGRectMake(0, 0,currentSliderValue / (_hyMaxValue/self.frame.size.width), self.frame.size.height);
    
    if(_textLabel){
        [_textLabel removeFromSuperview];
    }
    
    _textLabel = [[UILabel alloc]initWithFrame: CGRectMake(self.leftView.frame.size.width - 20, 0, 20, self.frame.size.height)];
    _textLabel.textColor = [UIColor whiteColor];
    _textLabel.font = [UIFont systemFontOfSize:9.0];
    [self.leftView addSubview:_textLabel];
    self.textLabel.text = [NSString stringWithFormat:@"%.f",currentSliderValue];
}

-(void)setShowTouchView:(BOOL)showTouchView{
    _showTouchView = showTouchView;
    if(_showTouchView){
        _touchView .frame = CGRectMake(0, 0, self.frame.size.height + 10, self.frame.size.height + 10);
        _touchView.center = _textLabel.center;
    }

}


-(void)setMaxValue:(CGFloat)maxValue{
    
    _hyMaxValue = maxValue;
    
}

-(void)setCurrentValueColor:(UIColor *)currentValueColor{
    
    self.leftView.backgroundColor = currentValueColor;
}

-(void)setShowTextColor:(UIColor *)showTextColor
{
    _textLabel.textColor = showTextColor;
    _scrollShowTextLabel.textColor = showTextColor;
}

-(void)setTouchViewColor:(UIColor *)touchViewColor{
    _touchView.backgroundColor = touchViewColor;
}


- (void)setShowScrollTextView:(BOOL)showScrollTextView
{
    
    _showScrollTextView = showScrollTextView;
    
    self.scrollShowTextView.hidden = !showScrollTextView;
    self.scrollShowTextView.frame = CGRectMake((self.touchView.frame.origin.x)>= 0 ? (self.touchView.frame.origin.x):(0) ,- 48, 36, 43);
    self.scrollShowTextLabel.text = [NSString stringWithFormat:@"%.f",self.currentSliderValue];
}

- (void)setup{
    
    
    self.layer.cornerRadius = self.frame.size.height/2;
    self.backgroundColor = [UIColor lightGrayColor];
    
    
    /** 显示文字label*/
    _textLabel = [[UILabel alloc]init];
    _textLabel.textColor = [UIColor whiteColor];
    _textLabel.font = [UIFont systemFontOfSize:9.0];
    _textLabel.textAlignment = NSTextAlignmentRight;
    [self.leftView addSubview:_textLabel];
    
    /** 数值视图*/
    _leftView = [[UIView alloc]init];
    _leftView.layer.cornerRadius = self.frame.size.height/2;
    [self addSubview:_leftView];
    
    _scrollShowTextView  = [[UIView alloc]init];
    _scrollShowTextView.hidden = YES;
    _scrollShowTextView.backgroundColor = [UIColor clearColor];
    [self addSubview:_scrollShowTextView];
    
    
    /** 浮标image*/
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,36,43)];
    _imageView.image = [UIImage imageNamed:@"亮度显示_"];
    [_scrollShowTextView addSubview:_imageView];
    
    /** 浮标数值显示label*/
    _scrollShowTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0 , 36, 36)];
    _scrollShowTextLabel.textAlignment = NSTextAlignmentCenter;
    _scrollShowTextLabel.textColor = [UIColor whiteColor];
    _scrollShowTextLabel.font = [UIFont systemFontOfSize:13.0];
    [_scrollShowTextView addSubview:_scrollShowTextLabel];
    
    
    /** 圆形触摸块*/
    _touchView  = [[UIView alloc]init];
    _touchView.layer.cornerRadius = (self.frame.size.height + 10) /2;
    _touchView.layer.masksToBounds = YES;
    _touchView.layer.borderColor = [UIColor whiteColor].CGColor;
    _touchView.layer.borderWidth = 2.0;
    _touchView.backgroundColor = [UIColor yellowColor];
    [self addSubview:_touchView];
    
    /** 默认最大值*/
    _hyMaxValue = 255.0;

    UILongPressGestureRecognizer *longGR = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longGRAction:)];
    [self addGestureRecognizer:longGR];
    
}



- (void)longGRAction:(UILongPressGestureRecognizer *)recognizer{
    
    if(recognizer.state == UIGestureRecognizerStateEnded){
        (!self.showScrollTextView) ? (self.scrollShowTextView.hidden = YES) : (self.scrollShowTextView.hidden = NO);
    }else{
        self.scrollShowTextView.hidden = NO;
        CGPoint translation            = [recognizer locationInView:self];
        
        
        if((translation.x >=0 && ((_hyMaxValue/self.frame.size.width) * translation.x) <= _hyMaxValue)){
          
            self.leftView.frame           = CGRectMake(0, 0, translation.x, self.frame.size.height);
            self.scrollShowTextView.frame = CGRectMake((translation.x-18)>= 0 ? (translation.x-18):(0) ,- 48, 36, 43);
            self.textLabel .frame             = CGRectMake((self.leftView.frame.size.width - 20) >= 0 ? (self.leftView.frame.size.width - 20):(0) , 0, 20, self.frame.size.height);
            self.textLabel.text           = [NSString stringWithFormat:@"%.f",(_hyMaxValue/self.frame.size.width) * translation.x];
            self.scrollShowTextLabel.text = [NSString stringWithFormat:@"%.f",(_hyMaxValue/self.frame.size.width) * translation.x];

            if(_showTouchView){
            _touchView .frame             = CGRectMake(0, 0, self.frame.size.height + 10, self.frame.size.height + 10);
            _touchView.center             = _textLabel.center;
            }
         
            
            /** delegate*/
            if([self.delegate respondsToSelector:@selector(HYSlider:didScrollValue:)]){
            [self.delegate HYSlider:self didScrollValue:(_hyMaxValue/self.frame.size.width) * translation.x];
            }
            
            
        }

    }
}



@end
