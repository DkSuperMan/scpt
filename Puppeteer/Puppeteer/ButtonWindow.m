//
//  ButtonWindow.m
//  Puppeteer
//
//  Created by Tiger on 14/9/29.
//  Copyright (c) 2014年 YOHO. All rights reserved.
//

#import "ButtonWindow.h"
#define runScriptName @"finger"
#define runScriptType @"scpt"
@implementation ButtonWindow

-(IBAction)buttonClick:(id)sender
{
    NSString *scriptPath = [[NSBundle mainBundle]
							pathForResource: runScriptName
							ofType: runScriptType];
    NSURL *scriptURL = [NSURL fileURLWithPath: scriptPath];
	NSMutableDictionary * errorDic = [[NSMutableDictionary alloc] initWithCapacity:0];
    NSLog(@"start read file");
    NSAppleScript *as = [[NSAppleScript alloc]
						 initWithContentsOfURL: scriptURL
						 error: &errorDic];

    
    NSLog(@"end read file");
    [as executeAndReturnError: NULL];
    NSLog(@"execured read file");
}
@end
