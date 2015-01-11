//
//  custumCollectionViewCell.m
//  itemexchange
//
//  Created by luozhuang on 15/1/10.
//  Copyright (c) 2015年 seu. All rights reserved.
//

#import "custumCollectionViewCell.h"
#import "cellBackground.h"
@implementation custumCollectionViewCell
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        // change to our custom selected background view
        cellBackground *backgroundView = [[cellBackground alloc] initWithFrame: CGRectMake(0,0,20,20)];
        self.selectedBackgroundView = backgroundView;
    }
    return self;
}
@end
