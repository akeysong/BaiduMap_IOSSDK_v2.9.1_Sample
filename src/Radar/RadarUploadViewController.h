//
//  RadarUploadViewController.h
//  IphoneMapSdkDemo
//
//  Created by wzy on 15/5/7.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MY_LOCATION_UPDATE_NOTIFICATION @"MY_LOCATION_UPDATE_NOTIFICATION"

@interface RadarUploadViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userTextField;//用户id（可由api自动生成，也可以自定义。我是想和环信的id搞一样的）
@property (weak, nonatomic) IBOutlet UITextField *infoTextField;//备注信息
@property (weak, nonatomic) IBOutlet UIButton *autoUploadButton;//连续上传按钮
@property (weak, nonatomic) IBOutlet UIButton *stopUploadButton;//停止连续上传按钮


- (IBAction)uploadAction:(id)sender;
- (IBAction)autoUploadAction:(id)sender;
- (IBAction)stopAutoUploadAction:(id)sender;
- (IBAction)clearAction:(id)sender;
- (IBAction)userIdTextEditEnd:(id)sender;

@end
