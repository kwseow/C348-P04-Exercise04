//
//  ViewController.m
//  C348-C348-Exercise04
//
//  Created by Seow Khee Wei (RP) on 10/11/14.
//  Copyright (c) 2014 Republic Polytechnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *outButton;

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
- (IBAction)actGenerateImagePressed:(UIButton *)sender {
    
    UIImage *image;

    int randomNumber = arc4random_uniform(4);
    
    if (randomNumber ==0 ){
        image = [UIImage imageNamed:@"rock.jpg"];
    }else if(randomNumber==1){
        image = [UIImage imageNamed:@"paper.jpg"];
    }else if (randomNumber==2){
        image = [UIImage imageNamed:@"lizard.jpg"];
    }else if (randomNumber==3){
        image = [UIImage imageNamed:@"scissors.jpg"];
    }
    else {
        image = [UIImage imageNamed:@"spock.jpg"];
    }
    [[self outButton] setImage:image forState: UIControlStateNormal];
    
}


@end
