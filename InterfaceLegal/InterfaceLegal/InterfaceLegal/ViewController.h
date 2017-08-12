//
//  ViewController.h
//  InterfaceLegal
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) NSString *nome;
@property (nonatomic, strong) NSString *senha;

@property (weak, nonatomic) IBOutlet UITextField *edtNome;
@property (weak, nonatomic) IBOutlet UITextField *edtNumero;


@property (weak, nonatomic) IBOutlet UILabel *valorSlider;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *SegmentControl;
@property (weak, nonatomic) IBOutlet UIButton *btnAlerta;


@end

