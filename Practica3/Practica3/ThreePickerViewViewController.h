//
//  ThreePickerViewViewController.h
//  Practica3
//
//  Created by Ivan on 10/21/14.
//  Copyright (c) 2014 Patito. All rights reserved.
//

#import <UIKit/UIKit.h>
#define AEROLINEA 0
#define ORIGEN 1
#define DESTINO 2

@interface ThreePickerViewViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>{
    
    IBOutlet UIPickerView *aerolinePickerView;
    
    NSMutableArray *arrayAerolinea;
    NSMutableArray *arrayOrigen;
    NSMutableArray *arrayDestino;
    
}


@property (weak, nonatomic) IBOutlet UILabel *aerolineaLabel;

@property (weak, nonatomic) IBOutlet UILabel *origenLabel;

@property (weak, nonatomic) IBOutlet UILabel *destinoLabel;


@end
