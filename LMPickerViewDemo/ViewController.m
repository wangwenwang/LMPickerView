//
//  ViewController.m
//  LMPickerViewDemo
//
//  Created by 凯东源 on 2017/7/31.
//  Copyright © 2017年 LM. All rights reserved.
//

#import "ViewController.h"
#import "LMPickerView.h"

@interface ViewController ()<LMPickerViewDelegate>


@property (strong, nonatomic)LMPickerView *LM;

// 日期
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

@implementation ViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _LM = [[LMPickerView alloc] init];
    
    _LM.delegate = self;
    
    [_LM initDatePicker];
    
    _LM.dateType = @"yyyy-MM";
}


- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}


- (IBAction)chooseDate {
    
    [_LM showDatePicker];
}


- (void)PickerViewComplete:(NSDate *)date {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    _dateLabel.text =  [formatter stringFromDate:date];
}

@end
