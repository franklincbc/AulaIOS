//
//  ViewController.m
//  SecondProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "VerdeViewController.h"
#import "VermelhoViewController.h"
#import "CinzaViewController.h"

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


- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if([identifier isEqualToString:@"vermelho"]){
        if([self.edtVermelho.text isEqualToString:@""]){
            return FALSE;
        }else{
            return TRUE;
        }
    }
    return YES;
}



 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  //Get the new view controller using [segue destinationViewController].
  //Pass the selected object to the new view controller.
     if([segue.identifier isEqualToString:@"verde"]){
         VerdeViewController *verdeViewController = [segue destinationViewController];
         if( [self.edtVerde.text isEqualToString:@""]){
             verdeViewController.nome = @"Verde";
         }else{
             verdeViewController.nome = self.edtVerde.text;
         }
         
     }else if([segue.identifier isEqualToString:@"cinza"]){
         CinzaViewController *cinzaViewController = [segue destinationViewController];
         
         if( [self.edtCinza.text isEqualToString:@""]){
             cinzaViewController.nome = @"Cinza";
         }
         else{
             cinzaViewController.nome = self.edtCinza.text;
         }
         
         
     }else if([segue.identifier isEqualToString:@"vermelho"]){
         VermelhoViewController *vermelhoViewController = [segue destinationViewController];
         
          if( [self.edtCinza.text isEqualToString:@""]){
         vermelhoViewController.nome = @"Vermelho";
          }else{
              vermelhoViewController.nome = self.edtCinza.text;
          }
         
     }
 }
 


@end
