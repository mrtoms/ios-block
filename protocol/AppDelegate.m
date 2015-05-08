//
//  AppDelegate.m
//  protocol
//
//  Created by apple on 15/4/27.
//  Copyright (c) 2015年 HanHe. All rights reserved.
//

#import "AppDelegate.h"
#import "Button.h"
#import "BtnListener.h"
#import "student.h"

typedef int (^MySun)(int,int);


@interface AppDelegate ()



- (void) protocol_unit;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    //[self protocol_unit];
    //[self block_delegate_unit];
    
    
//    NSLog(@"字符串转换int=%i",[@"18" intValue]);
//    NSLog(@"字符串内容长度判断 %zi",[@"hello" length]);
//    
//    //objc 格式转换为c语言格式
//    const char * cStr = [@"我是objc字符串" UTF8String];
//    NSLog(@"%s",cStr);
//    
//    NSLog(@"字符串截取: %c",[@"abcd" characterAtIndex:1]);
//    NSLog(@"字母转大写: %@",[@"abcd" uppercaseString]);
//    NSLog(@"字母转小写: %@",[@"AbcD" lowercaseString]);
//    NSLog(@"字符串比较: %d",[@"a" isEqualToString: @"a"]);
    
    
    //NSArray *array1 = [NSArray arrayWithObjects:@"a",@"b",@"c", nil];
    
    //常规遍历
//    for(int i = 0 ; i < [array1 count] ; i++){
//       
//        NSLog(@"%@",[array1 objectAtIndex:i]);
//    
//    }
    
//    NSLog(@"取数组最后一个对象: %@",[array1 lastObject]);
//    NSLog(@"获取元素所在数组中的位置: %zi",[array1 indexOfObject:@"b"]);
    
//    [array1 enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
//        
//        NSLog(@"value:%@ - index:%zi",obj,idx);
//    }];
//    
//    NSEnumerator *em = [array1 reverseObjectEnumerator];
//    id obj1 = nil;
//    
//    while(obj1 = [em nextObject])
//    {
//        NSLog(@"--> %@",obj1);
//    }
//    
//    student *stu1 = [[student student] initWithName:@"a1"];
//    student *stu2 = [[student student] initWithName:@"a2"];
//    student *stu3 = [[student student] initWithName:@"a3"];
//    
//    NSArray *ar2 = [NSArray arrayWithObjects:stu1,stu2,stu3, nil];
//    [ar2 makeObjectsPerformSelector:@selector(show)];
//    
//    NSArray *ar3 = [ar2 subarrayWithRange:NSMakeRange(1, 1)];
//    NSLog(@"ar3: %@",ar3);
    
    //NSSortDescriptor *nsd = [NSSortDescriptor new];
    //[ar2 sortedArrayUsingDescriptors:ar3];
    
    //NSLog(@"ar3: %@",ar3);
    
    
//    NSError *error;
//    NSURL *url = [[NSURL alloc] initFileURLWithPath:@"http://www.baidu.com"];
//    
//    NSString *result = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
//    
//    if(error){
//        
//        NSLog(result);
//        
//    }else{
//        
//        NSLog(@"出错啦@%",result);
//    }
    

    
    NSMutableString *strM = [[NSMutableString alloc] initWithCapacity:10];
    [strM setString:@"abc"];
    [strM appendString:@"-def"];
    NSLog(@"str1: %@",strM);
    
//    NSString *str2 = [strM substringWithRange:NSMakeRange(1, 4)];
    NSRange reage2 = [strM rangeOfString:@"bc"];
    NSLog(@"reage2: %zi - length:%zi",reage2.location,reage2.length);
    NSString *str2 = [strM substringWithRange:reage2];

    NSLog(@"str1: %@",str2);
    
    
    
    
    return YES;
}

-(void) block_delegate_unit{

    Button *btn = [[Button alloc] init:@"btn_1"];
    
    btn.blocks = ^(Button *btn){
        
        NSLog(@"btnName: %@  click .....",[btn name]);
        
    };
    
    [btn blockClicker];

}

-(void) protoal_lategate_unit{
    
    __block int aa = 5;
    
    int (^sum) (int a ,int b) = ^(int a , int b){
        
        return a + b;
    };
    
    
    MySun my = ^(int a , int b){
        
        aa = 12;
        
        return a + b;
    };
    
    NSLog(@"sum: %i  MySun: %i",sum(1,1),my(3,2));


}

//protoal test
- (void) protocol_unit{
  
    
    Button *btn = [[Button alloc] init:@"btn_1"];
    Button *btn2 = [[Button alloc] init:@"btn_2"];
    
    BtnListener *bLi = [[BtnListener alloc] init];
    
    [btn setDelegate:bLi];
    [btn click];
    
    [btn2 setDelegate:bLi];
    [btn2 click];

}

- (void)applicationWillResignActive:(UIApplication *)application {
    
    
    
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
