//
//  ViewController.m
//  dz1
//
//  Created by abc123 on 14.10.16.
//  Copyright © 2016 123. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TextFieldAmount;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;

@end

@implementation ViewController

- (IBAction)pressButton:(id)sender {
    
    //NSString *strAmount = _TextFieldAmount.text;
    int amount = _TextFieldAmount.text.intValue;
    int r10 = 0;
    int r5 = 0;
    int r2 = 0;
    int r1 = 0;
    
    r10 = amount/10;
    r5 = (amount%10)/5;
    r2 = ((amount%10)%5)/2;
    r1 = ((amount%10)%5)%2;
    
    NSString *str10 = [NSString stringWithFormat:@"Coins 10: %d", r10];
    NSString *str5 = [NSString stringWithFormat:@"Coins 5: %d", r5];
    NSString *str2 = [NSString stringWithFormat:@"Coins 2: %d", r2];
    NSString *str1 = [NSString stringWithFormat:@"Coins 1: %d", r1];
    
    _label1.text = str10;
    _label2.text = str5;
    _label3.text = str2;
    _label4.text = str1;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
