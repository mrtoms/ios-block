//
//  student.h
//  protocol
//
//  Created by apple on 15/4/29.
//  Copyright (c) 2015年 HanHe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface student : NSObject

+(id) student;
@property(assign,nonatomic) NSString* name1;

-(id) initWithName : (NSString*) name2;

-(void) show;

@end
