//
//  SwipViewController.m
//  MyGestureEx
//
//  Created by Satyanand on 2/12/15.
//  Copyright (c) 2015 prokarma. All rights reserved.
//

#import "SwipViewController.h"

@interface SwipViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;

-(void)handleSwipe:(UISwipeGestureRecognizer *)swipReg;

@end

@implementation SwipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UISwipeGestureRecognizer *swipGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
    swipGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view1 addGestureRecognizer:swipGesture];
    [self.view2 addGestureRecognizer:swipGesture];
    [self.view3 addGestureRecognizer:swipGesture];
    
    
    UISwipeGestureRecognizer *leftSwiope = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
    leftSwiope.direction = UISwipeGestureRecognizerDirectionLeft;

    [self.view1 addGestureRecognizer:leftSwiope];
    [self.view2 addGestureRecognizer:leftSwiope];
    [self.view3 addGestureRecognizer:leftSwiope];
    
}

-(void)handleSwipe:(UISwipeGestureRecognizer *)swipReg{
    
    if (swipReg.direction == UISwipeGestureRecognizerDirectionLeft) {
        
        NSLog(@"swipeGestureLeft");
        UIGestureRecognizerState st = swipReg.state;
        
        NSLog(@"%d State",st);
        [UIView animateWithDuration:0.5 animations:^{
            //self.view3.frame = CGRectOffset(self.view3.frame, -320.0, 0.0);
            //self.view2.frame = CGRectOffset(self.view2.frame, 320.0, 0.0);
            //self.view1.frame = CGRectOffset(self.view1.frame, 320.0, 0.0);
            
            
        }];
        
    }
    else if (swipReg.direction == UISwipeGestureRecognizerDirectionRight) {
        
        NSLog(@"swipGestureRight");
        
        UIGestureRecognizerState st = swipReg.state;
        
        NSLog(@"%d State",st);
        
        [UIView animateWithDuration:0.5 animations:^{
            //self.view3.frame = CGRectOffset(self.view3.frame, 320.0, 0.0);
            //self.view2.frame = CGRectOffset(self.view2.frame, 320.0, 0.0);
            //self.view1.frame = CGRectOffset(self.view1.frame, 320.0, 0.0);
            
            
        }];
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
