//
//  BtnListener.m
//  protocol
//
//  Created by apple on 15/4/27.
//  Copyright (c) 2015年 HanHe. All rights reserved.
//

#import "BtnListener.h"

@implementation BtnListener

-(void) OnClick:(Button *)btn{
   
    if(btn != nil){
    
        //判断是否实现该协议
        if([self conformsToProtocol:@protocol(ButtonDelegate)]){
        
        NSString *Str = [NSString stringWithFormat:@"Button: %@ 点击了该事件...",btn.name];
        
        NSLog(Str);
            
        }
    }

}

@end
