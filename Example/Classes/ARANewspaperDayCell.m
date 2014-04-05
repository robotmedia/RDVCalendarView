//
//  ARANewspaperDayCell.m
//  ARA iPhone
//
//  Created by Saül Baró Ruiz on 04/04/14.
//  Copyright (c) 2014 Robot Media. All rights reserved.
//

#import "ARANewspaperDayCell.h"

@implementation ARANewspaperDayCell

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self) {
        self.clipsToBounds = YES;
        
        self.layer.cornerRadius = 20;

        self.textLabel.font = [UIFont systemFontOfSize:15];
        self.textLabel.highlightedTextColor = self.textLabel.textColor;

        self.selectedBackgroundView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
        self.selectedBackgroundView.layer.borderWidth = 1.5;
        self.selectedBackgroundView.layer.cornerRadius = 20;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}

- (void)prepareForReuse
{
    [super prepareForReuse];
}

@end
