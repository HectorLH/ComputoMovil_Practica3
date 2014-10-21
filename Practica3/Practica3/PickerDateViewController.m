//
//  PickerDateViewController.m
//  Practica3
//
//  Created by Ivan on 10/17/14.
//  Copyright (c) 2014 Patito. All rights reserved.
//

#import "PickerDateViewController.h"

@interface PickerDateViewController ()

@end

@implementation PickerDateViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDate *now = [NSDate date];
    [_datePicker1 setDate:now animated:YES];
    [_datePicker2 setDate:now animated:YES];
                   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnVer:(id)sender {
    NSDate *date1 = [_datePicker1 date];
    NSDate *date2 = [_datePicker2 date];
    NSTimeInterval result = [date2 timeIntervalSinceDate:date1];
    
    _lblDiferencia.text = [NSString stringWithFormat:@"%f", result];
    
}
@end
