//
//  ArrayViewController.m
//  InterfaceLegal
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ArrayViewController.h"
#import "CustomTableViewCell.h"

@interface ArrayViewController ()

@end

@implementation ArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.arraySemana = [];
    
    self.arrayDic = @[
                            @{@"nome":@"Franklin Cardoso",
                             @"email":@"franklincbc@gmail.com",
                             @"rua":@"Rua claudio B",
                             @"pais":@"Brasil"},
                             
                            @{@"nome":@"Ribamar",
                             @"email":@"riba@gmail.com",
                             @"rua":@"Rua X",
                             @"pais":@"Brasil"},
                             
                            @{@"nome":@"Felipe",
                             @"email":@"felipe@gmail.com",
                             @"rua":@"Rua Y",
                              @"pais":@"EUA"},
                             
                            @{ @"nome":@"Rafael",
                             @"email":@"rafael@gmail.com",
                             @"rua":@"Rua WD",
                             @"pais":@"Brasil"},
                             
                            @{@"nome":@"Diogenes",
                             @"email":@"diogenes@gmail.com",
                             @"rua":@"Rua AAA",
                             @"pais":@"Washington"}
                             ];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrayDic.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger linha = indexPath.row;
    float resto = 0.00;
    resto = linha % 2;
    
    /*if (resto == 0) {
    
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellAmarela" forIndexPath:indexPath];
    cell.textLabel.text = self.arraySemana[indexPath.row];
    return cell;
        
    }
    
    else
        
    {
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellAmarela" forIndexPath:indexPath];
        cell.textLabel.text = self.arraySemana[indexPath.row];
        return cell;
    }
    */
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:indexPath];
    NSDictionary *dic = self.arrayDic[indexPath.row];
    cell.lblNome.text = dic[@"nome"];
    cell.lblEmail.text = dic[@"email"];
    cell.lblRua.text = dic[@"rua"];
    cell.lblPais.text = dic[@"pais"];
    
    return cell;
    
    
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
