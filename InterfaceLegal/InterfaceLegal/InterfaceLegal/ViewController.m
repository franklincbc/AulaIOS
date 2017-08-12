//
//  ViewController.m
//  InterfaceLegal
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.btnAlerta.hidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slider:(id)sender {
    
    int value = (int) self.slider.value;
    
    self.valorSlider.text = [NSString stringWithFormat:@"%i", value];
    
}

- (IBAction)segmentControl:(id)sender {
    
    if(self.SegmentControl.selectedSegmentIndex == 0){
        self.btnAlerta.hidden = YES;
    }else {
        self.btnAlerta.hidden = NO;
    }
    
}

- (IBAction)button:(id)sender {
    
}

@end
