//
//  CompartirTableViewController.m
//  Practica3
//
//  Created by Ivan on 10/17/14.
//  Copyright (c) 2014 Patito. All rights reserved.
//

#import "CompartirTableViewController.h"
#import "ContactosTableViewCell.h"
#import <Social/Social.h>

@interface CompartirTableViewController ()

@end

@implementation CompartirTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _Names = @[@"Hugo Lopez", @"Ivan Ramire López", @"Juan Aguilera", @"Lupe Esparza", @"Abel Perez", @"Beto Benitez", @"Carlos Ayala", @"Daniel Torres", @"Esteban Trujillo", @"Fernando Herrera", ];
    _Photos = @[@"Hugo.jpg", @"Ivan.jpg", @"Juan.jpg", @"Lupe.jpg", @"Abel.jpg", @"Beto.jpg", @"Carlos.jpg", @"Daniel.jpg", @"Esteban.jpg", @"Fernando.jpg", ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _Names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TableCell";
    ContactosTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    int row = [indexPath row];
    cell.NameLabel.text = _Names[row];
    cell.PhotoImage.image = [UIImage imageNamed:_Photos[row]];
    
    return cell;
}


-(IBAction)facebook:(id)sender{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]){
        SLComposeViewController *fbPost = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [fbPost setInitialText:@"Tengo 10 amigos en mi lista"];
        [fbPost addImage:[UIImage imageNamed:@"amigos.png"]];
        [fbPost addURL:[NSURL URLWithString:@"www.youtube.com"]];
        [self presentViewController:fbPost animated:YES completion:nil];
    }
}

@end
