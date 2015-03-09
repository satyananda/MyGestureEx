//
//  TapViewController.m
//  MyGestureEx
//
//  Created by Satyanand on 2/12/15.
//  Copyright (c) 2015 prokarma. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()
@property (weak, nonatomic) IBOutlet UIView *tapView;

-(void)singletapGestureAction:(UITapGestureRecognizer *)tapGestureReg;

-(void)doubleTapGestureAction:(UITapGestureRecognizer *)tapGestureReg;


@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //Single TAp
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(singletapGestureAction:)];
    [self.tapView addGestureRecognizer:singleTapGesture];
    
    
    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubleTapGestureAction:)];
    doubleTap.numberOfTapsRequired = 2;
    doubleTap.numberOfTouchesRequired = 2;
    
    //[self.tapView addGestureRecognizer:doubleTap];
    
    
    NSDateFormatterStyle style;
    switch (style) {
        case NSDateFormatterFullStyle:
            
            break;
            
        default:
            break;
    }}

-(void)doubleTapGestureAction:(UITapGestureRecognizer *)tapGestureReg{
    
    NSLog(@"doubleTapGestureAction");
    //TODO: write code here

    
}
-(void)singletapGestureAction:(UITapGestureRecognizer *)tapGestureReg{
    
    NSLog(@"singletapGestureAction");
    
    CGFloat newWidth = 100.0;
    
    if (self.tapView.frame.size.width == 100.0) {
     
        newWidth = 200.0;
    }
    
    CGPoint currentCenter = self.tapView.center;
    
    [UIView animateWithDuration:0.5 animations:^{
        self.tapView.frame = CGRectMake(self.tapView.frame.origin.x, self.tapView.frame.origin.y,newWidth, self.tapView.frame.size.height);
        self.tapView.center = currentCenter;
    }];
    
    
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



-(void)testMethod:(NSString*)string
{
    
    NSString *str1 = @"string 1";
    NSString *str2 = @"string 2";
    
    
    NSLog(@"%@,%@",str1,str2);
    
}

-(void)testMethod2:(NSString*)string
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //
});
}

-(void)test222 {
	
}

-(void)test223 {
	
}

-(void)test224 {
	
}

-(void)test225 {
	
}

@end
