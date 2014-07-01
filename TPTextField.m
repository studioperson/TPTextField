//
//  TPTextField.m
//  
//
//  Created by Tony Person on 7/1/14. (c) all rights reserved.
//  GNU GENERAL PUBLIC LICENSE
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
