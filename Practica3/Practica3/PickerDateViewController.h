//
//  PickerDateViewController.h
//  Practica3
//
//  Created by Ivan on 10/17/14.
//  Copyright (c) 2014 Patito. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerDateViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker1;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker2;

@property (weak, nonatomic) IBOutlet UILabel *lblDiferencia;




- (IBAction)btnVer:(id)sender;

@end
