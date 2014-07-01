//
//  TPTextField.m
//  greenline_POC
//
//  Created by Tony Person on 7/1/14.
//  Copyright (c) 2014 Tony Person. All rights reserved.
//

#import "TPTextField.h"

@implementation TPTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
#pragma mark - method overrides - deny user copy/paste on UITTextFields
- (id)targetForAction:(SEL)action withSender:(id)sender
{
    UIMenuController *menuController = [UIMenuController sharedMenuController];
    if (action == @selector(selectAll:) || action == @selector(paste:) ||action == @selector(copy:) || action == @selector(cut:)) {
        if (menuController) {
            [UIMenuController sharedMenuController].menuVisible = NO;
        }
        return nil;
    }
    return [super targetForAction:action withSender:sender];
}

@end
