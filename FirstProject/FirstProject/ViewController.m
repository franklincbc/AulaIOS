//
//  ViewController.m
//  FirstProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "SegundoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chamarViewController:(id)sender {
    
    NSArray *array = @[@"Frank", @"Aula"];
    
    SegundoViewController *segViewController = [self.
                                                storyboard instantiateViewControllerWithIdentifier:@"SegundoViewController"];
    segViewController.nome = @"Qualquer coisa";
    [self presentViewController:segViewController animated:YES completion:nil];
}

@end
