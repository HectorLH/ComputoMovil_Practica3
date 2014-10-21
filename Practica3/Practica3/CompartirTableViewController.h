//
//  CompartirTableViewController.h
//  Practica3
//
//  Created by Ivan on 10/17/14.
//  Copyright (c) 2014 Patito. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompartirTableViewController : UITableViewController

@property(nonatomic, strong)NSArray *Photos;
@property(nonatomic, strong)NSArray *Names;

-(IBAction)facebook:(id)sender;

@end
