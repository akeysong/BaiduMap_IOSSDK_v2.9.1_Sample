//
//  AppDelegate.m
//  BaiduMapSdkSrc
//
//  Created by baidu on 13-3-21.
//  Copyright (c) 2013年 baidu. All rights reserved.
//

#import "AppDelegate.h"
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import "RootViewController.h"

BMKMapManager* _mapManager;
@implementation AppDelegate

@synthesize window;
@synthesize navigationController;



/*///地图View类，使用此View可以显示地图窗口，并且对地图进行相关的操作
 @interface BMKMapView : UIView*/


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
	// 要使用百度地图，请先启动BaiduMapManager
	_mapManager = [[BMKMapManager alloc]init];
    BOOL ret = [_mapManager start:@"jKHsgDC8IUdfn9AQ1Ylv2dhk" generalDelegate:self];
	if (!ret) {
		NSLog(@"manager start failed!");
	}
    
    //因为在项目设置里设了启动页面是mainwindow.xib,而这个xib里的确是有一个导航界面他的控制器是navigationController。
    //而navigation界面里有一个viewController控制器(视图控制器)叫rootViewController
    //所以实际上起作用的是rootViewController控制器
    [self.window setRootViewController:navigationController];
    
    
    
    
    /*- (void)makeKeyAndVisible;                             // convenience. most apps call this to show the main window and also make it key. otherwise use view hidden property 使之成为主窗口，并且显示*/
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {

    [BMKMapView willBackGround];
    /*///地图View类，使用此View可以显示地图窗口，并且对地图进行相关的操作
     @interface BMKMapView : UIView*/
}




- (void)applicationDidBecomeActive:(UIApplication *)application {
   
    [BMKMapView didForeGround];
    /*///地图View类，使用此View可以显示地图窗口，并且对地图进行相关的操作
     @interface BMKMapView : UIView*/
}



#pragma mark 地图状态诊断

- (void)onGetNetworkState:(int)iError
{
    if (0 == iError) {
        NSLog(@"联网成功");
    }
    else{
        NSLog(@"onGetNetworkState %d",iError);
    }
    
}

- (void)onGetPermissionState:(int)iError
{
    if (0 == iError) {
        NSLog(@"授权成功");
    }
    else {
        NSLog(@"onGetPermissionState %d",iError);
    }
}

@end
