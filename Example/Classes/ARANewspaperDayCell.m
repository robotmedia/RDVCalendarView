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
        _downloadedView = [[UIView alloc] init];
        _downloadedView.backgroundColor = [UIColor blueColor];
        _downloadedView.hidden = YES;
        self.textLabel.font = [UIFont systemFontOfSize:15];
        self.textLabel.highlightedTextColor = self.textLabel.textColor;
        self.downloadedView.layer.cornerRadius = 2;
        self.layer.cornerRadius = 20;
        self.clipsToBounds = YES;
        self.selectedBackgroundView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
        self.selectedBackgroundView.layer.borderWidth = 1.5;
        self.selectedBackgroundView.layer.cornerRadius = 20;
        [self.contentView addSubview:_downloadedView];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.downloadedView.frame = CGRectMake(self.frame.size.width / 2 - 2, 30, 4, 4);
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    self.downloadedView.hidden = YES;
}

@end
