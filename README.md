# HYSlider

![image](https://github.com/hy285585804/HYSlider/blob/master/slider.gif)

```

        /** 样式1*/
        
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
    



```