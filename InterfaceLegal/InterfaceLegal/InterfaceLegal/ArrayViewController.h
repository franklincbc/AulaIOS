//
//  ArrayViewController.h
//  InterfaceLegal
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArrayViewController : UIViewController <UITableViewDataSource, UITableViewDelegate >

@property (nonatomic, strong) NSArray *arraySemana;
@property (nonatomic, strong) NSArray *arrayDic;
@property (nonatomic, strong) NSDictionary *dic;

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
