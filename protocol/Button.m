//
//  Button.m
//  protocol
//
//  Created by apple on 15/4/27.
//  Copyright (c) 2015年 HanHe. All rights reserved.
//

#import "Button.h"

@implementation Button


-(Button *)init:(NSString *)name{
   
    _name = name;
    
    return self;
}

#pragma mark - 实现OnClick方法，并判断是否实现协议
-(void) click{

    //判断监听器是否实现OnClick方法
    if([_delegate respondsToSelector:@selector(OnClick:)]){
    
        
        NSLog([NSString stringWithFormat:@"button: %@ 通知委托实现类并调用方法。。。",self.name]);
        [_delegate OnClick:self];
        
    
    }else{
    
        NSLog(@"未实现OnClick 方法。。。。。");
    }
    
}

-(void) blockClicker{
 
    _blocks(self);
  
}

@end
