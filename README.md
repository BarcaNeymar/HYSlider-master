# HYSlider

> 灵活多变,可自由组合您想要的slider,更多方式请下载查看!别忘了给个star哟亲~

![image](https://github.com/hy285585804/HYSlider/blob/master/slider.gif)

``` objc

HYSlider *slider1 = [[HYSlider alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 10)];
/* 滑动方式 */
slider1.sliderType = HYSliderLongPressMove;
/* 当前颜色 */
slider1.currentValueColor = [UIColor redColor];
/* 最大值 */
slider1.maxValue = 255;
/* 当前值 */
slider1.currentSliderValue = 200;
/* 文字显示颜色 */
slider1.showTextColor = [UIColor redColor];
/* 是否显示圆形控件 */
slider1.showTouchView = YES;
/* 是否显示浮标 */
slider1.showScrollTextView = YES;
/* 圆形控件颜色 */
slider1.touchViewColor = [UIColor redColor];
/* 代理 */
slider1.delegate = self;
[self.view addSubview:slider1];


```


