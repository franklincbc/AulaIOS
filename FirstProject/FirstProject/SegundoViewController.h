//
//  SegundoViewController.h
//  FirstProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegundoViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) NSString* nome;
@property (nonatomic, strong) NSArray *meuArray;
@property (weak, nonatomic) IBOutlet UILabel *labelTeste;
@property (weak, nonatomic) IBOutlet UITextField *edtEmail;
@property (weak, nonatomic) IBOutlet UITextField *edtSenha;


@end
