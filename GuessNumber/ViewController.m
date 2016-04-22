//
//  ViewController.m
//  GuessNumber
//
//  Created by MAC on 15/12/3.
//  Copyright © 2015年 acl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    __weak IBOutlet UITextField *textFielt;

    __weak IBOutlet UILabel *label;
    int answer;//生成的正确答案
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    
    answer =arc4random()%5;
}
#pragma mark ----button的点击事件
- (IBAction)buttonClick:(UIButton *)sender {
    
    float a=arc4random()%256/255.0;
    NSLog(@"%f",a);
    //判断是否有文本输入
    if ([textFielt.text
        isEqualToString:@""]) {
        label.text =@"输入不能为空";
        return;
    }
    //输入文本和正确答案比较
    if ([textFielt.text intValue]>answer) {
        label.text =@"猜大了";
    }else if ([textFielt.text intValue]<answer){
        label.text =@"猜小了";
    }else{
        label.text =@"猜对了";
    }

    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
