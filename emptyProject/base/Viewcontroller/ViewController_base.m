//
//  ViewController_base.m
//  emptyProject
//
//  Created by MAC on 2021/3/29.
//

#import "ViewController_base.h"

@interface ViewController_base ()

@end

@implementation ViewController_base

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}


-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = YES;
}

@end
