//
//  student.m
//  protocol
//
//  Created by apple on 15/4/29.
//  Copyright (c) 2015年 HanHe. All rights reserved.
//

#import "student.h"

@implementation student

@synthesize name1;

+(id) student{
    
    
    return [[student alloc] init];

}

-(id) initWithName:(NSString *)name2{
  
    [self setName1:name2];
    
    return self;

}

-(void) show{
    
    
    NSLog(@"ok....");

}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name: %@", name1];
}

@end
