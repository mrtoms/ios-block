//
//  Button.h
//  protocol
//
//  Created by apple on 15/4/27.
//  Copyright (c) 2015年 HanHe. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Button;

//block应用
typedef void (^blockClick) (Button *);

//申明一个协议
@protocol ButtonDelegate <NSObject>;

-(void) OnClick : (Button *) btn;

@end


//button 类申明
@interface Button : NSObject

@property NSString *name;

-(Button *) init : (NSString *) name;

@property (nonatomic,retain) id<ButtonDelegate> delegate;
-(void) click;

@property(nonatomic,assign) blockClick blocks;
-(void) blockClicker;

@end
