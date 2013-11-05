//
//  ViewController.m
//  ColorPaletteProject
//
//  Created by Mick on 11/5/13.
//  Copyright (c) 2013 Happtech Development. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+FlatUIColors.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor turquoiseColor]];
    [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(timerFired:) userInfo:nil repeats:YES];
}

- (void)timerFired:(NSTimer *)sender
{
    NSArray *arr = @[[UIColor turquoiseColor],[UIColor emeraldcolor],[UIColor peterRiverColor],[UIColor amethystColor],[UIColor wetAsphaltColor],[UIColor greenSeaColor],[UIColor nephritisColor],[UIColor belizeHoleColor],[UIColor wisteriaColor],[UIColor midnightBlueColor],[UIColor sunFlowerColor],[UIColor carrotColor],[UIColor alizarinColor],[UIColor cloudsColor],[UIColor concreteColor],[UIColor orange_Color],[UIColor pumpkinColor],[UIColor pomegranateColor],[UIColor silverColor],[UIColor asbestosColor]];

    NSInteger idx = [arr indexOfObject:self.view.backgroundColor];

    if (idx < arr.count - 1) {
        [UIView animateWithDuration:0.25 animations:^{
            [self.view setBackgroundColor:arr[idx + 1]];
        }];
    }
}



@end
