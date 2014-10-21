//
//  ThreePickerViewViewController.m
//  Practica3
//
//  Created by Ivan on 10/21/14.
//  Copyright (c) 2014 Patito. All rights reserved.
//

#import "ThreePickerViewViewController.h"


@implementation ThreePickerViewViewController

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView{
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == AEROLINEA)
        return [arrayAerolinea count];
    if(component == ORIGEN)
        return [arrayOrigen count];
    if(component == DESTINO)
        return [arrayDestino count];
    return 0;
}

-(NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(component == AEROLINEA)
        return [arrayAerolinea objectAtIndex:row];
    if(component == ORIGEN)
        return [arrayOrigen objectAtIndex:row];
    if(component == DESTINO)
        return [arrayDestino objectAtIndex:row
                ];
    return 0;
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _aerolineaLabel.text = [arrayAerolinea objectAtIndex:[pickerView selectedRowInComponent:0]];
    _origenLabel.text = [arrayOrigen objectAtIndex:[pickerView selectedRowInComponent:1]];
    _destinoLabel.text = [arrayDestino objectAtIndex:[pickerView selectedRowInComponent:2]];
}



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
    
    arrayAerolinea = [[NSMutableArray alloc] init];
    [arrayAerolinea addObject:@"Volaris"];
    [arrayAerolinea addObject:@"InterJet"];
    [arrayAerolinea addObject:@"JetBlue"];
    [arrayAerolinea addObject:@"Aeromexico"];
    [arrayAerolinea addObject:@"United"];
    
    arrayOrigen = [[NSMutableArray alloc] init];
    [arrayOrigen addObject:@"Las Vegas"];
    [arrayOrigen addObject:@"Ciudad Juarez"];
    [arrayOrigen addObject:@"Mexicali"];
    [arrayOrigen addObject:@"Monterrey"];
    [arrayOrigen addObject:@"Los Mochis"];
    [arrayOrigen addObject:@"Culiacán"];
    [arrayOrigen addObject:@"La Paz"];
    
    
    arrayDestino = [[NSMutableArray alloc] init];
    [arrayDestino addObject:@"Leon"];
    [arrayDestino addObject:@"Morelia"];
    [arrayDestino addObject:@"Uruapan"];
    [arrayDestino addObject:@"Toluca"];
    [arrayDestino addObject:@"Puebla"];
    [arrayDestino addObject:@"Oaxaca"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
