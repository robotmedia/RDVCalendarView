//
//  ARANewspaperCalendarViewController.m
//  ARA iPhone
//
//  Created by Saül Baró Ruiz on 04/04/14.
//  Copyright (c) 2014 Robot Media. All rights reserved.
//

#import "ARANewspaperCalendarViewController.h"
#import "ARANewspaperDayCell.h"

@interface ARANewspaperCalendarViewController ()

@end

@implementation ARANewspaperCalendarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Calendar";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[self.navigationController navigationBar] setTranslucent:NO];
    
    self.calendarView.headerView.backgroundColor = [UIColor lightGrayColor];
    self.calendarView.separatorStyle = RDVCalendarViewDayCellSeparatorTypeNone;
    self.calendarView.dayCellEdgeInsets = UIEdgeInsetsZero;
    
    [self.calendarView registerDayCellClass:[ARANewspaperDayCell class]];
}

- (NSArray *)monthNamesForCalendarView:(RDVCalendarView *)calendarView
{
    NSArray * const months = @[NSLocalizedString(@"GENER", @""),
                               NSLocalizedString(@"FEBRER", @""),
                               NSLocalizedString(@"MARÇ", @""),
                               NSLocalizedString(@"ABRIL", @""),
                               NSLocalizedString(@"MAIG", @""),
                               NSLocalizedString(@"JUNY", @""),
                               NSLocalizedString(@"JULIOL", @""),
                               NSLocalizedString(@"AGOST", @""),
                               NSLocalizedString(@"SETEMBRE", @""),
                               NSLocalizedString(@"OCTUBRE", @""),
                               NSLocalizedString(@"NOVEMBRE", @""),
                               NSLocalizedString(@"DESEMBRE", @"")];
    
    return months;
}

- (NSArray *)weekdayNamesForCalendarView:(RDVCalendarView *)calendarView
{
    NSArray * const weekSymbols = @[NSLocalizedString(@"Dl", @""),
                                    NSLocalizedString(@"Dt", @""),
                                    NSLocalizedString(@"Dc", @""),
                                    NSLocalizedString(@"Dj", @""),
                                    NSLocalizedString(@"Dv", @""),
                                    NSLocalizedString(@"Ds", @""),
                                    NSLocalizedString(@"Dg", @"")];
    
    return weekSymbols;
}

- (NSCalendar *)calendarForCalendarView:(RDVCalendarView *)calendarView
{
    NSCalendar *customCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    [customCalendar setFirstWeekday:2]; // Sunday == 1, Saturday == 7
    return customCalendar;
}

- (CGRect)frameForMonthViewCalendarView:(RDVCalendarView *)calendarView
{
    return CGRectMake(10, 68, 300, 250);
}

- (CGFloat)widthForDayCellInCalendarView:(RDVCalendarView *)calendarView
{
    return 40;
}

- (CGFloat)heightForDayCellInCalendarView:(RDVCalendarView *)calendarView
{
    return 40;
}

- (UIColor *)colorForHeaderText:(RDVCalendarView *)calendarView
{
    return [UIColor whiteColor];
}

@end
