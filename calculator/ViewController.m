//
//  ViewController.m
//  calculator
//
//  Created by 室岡　大二郎 on 12/11/08.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


int x;
int y;
int keisan=0;
int n;
int shou;
int answer;
int Z;

- (IBAction)zero:(id)sender {
        switch (keisan) {
            
            case 0:
                x=x*10;
        [[self result]setText:[NSString stringWithFormat:@"%g",x]];
         break;
                
            case 1:
                y=y*10;
        [[self result]setText:[NSString stringWithFormat:@"%g",y]];
         break;
    
        }
}

- (IBAction)plusminus:(id)sender {
    



}
- (IBAction)dot:(id)sender;{
    shou=1;
    
}


- (IBAction)equarl:(id)sender {
    switch(answer){
        case 1:
            Z=x+y;
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
      
        case 2:
            Z=x-y;
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];    
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 3:
            Z=x*y;
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            keisan=1;
            break;
            
        case 4:
            Z=x/y;
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
    }
}
- (IBAction)one:(id)sender {
    switch (keisan) {
            
        case 0:
            x=x*10+1;
           [[self result]setText:[NSString stringWithFormat:@"%g",x]];
            break;
            
        case 1:
            
            y=y*10+1;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
        }
    }
- (IBAction)two:(id)sender {
    switch (keisan) {
            
        case 0:
            x=x*10+2;
           [[self result]setText:[NSString stringWithFormat:@"%g",x]];
            break;
            
        case 1:
            y=y*10+2;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
   }
}
- (IBAction)three:(id)sender {
    switch (keisan) {
            
        case 0:
            x=x*10+3;
            [[self result]setText:[NSString stringWithFormat:@"%g",x]];
             break;
        
        case 1:
            y=y*10+3;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
            
   }
}

- (IBAction)kakko:(id)sender {
    }

- (IBAction)four:(id)sender {
    switch (keisan) {
            
        case 0:
            x=x*10+4;
            [[self result]setText:[NSString stringWithFormat:@"%g",x]];
             break;
            
        case 1:
            y=y*10+4;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
   }
}
- (IBAction)five:(id)sender {
    switch (keisan) {
            
        case 0:
            x=x*10+5;
            [[self result]setText:[NSString stringWithFormat:@"%g",x]];
            break;
            
        case 1:
            y=y*10+5;
            [[self result]setText:[NSString stringWithFormat:@"%g",x]];
            break;
   }
}
- (IBAction)six:(id)sender {
    switch (keisan) {
            
        case 0:
            x=x*10+6;
            [[self result]setText:[NSString stringWithFormat:@"%g",x]];
            break;
            
        case 1:
            y=y*10+6;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;

  }
}
- (IBAction)plus:(id)sender {
    answer=1;
    if (keisan==0) {

        keisan=1;
        shou=0;
        n=1;
        [[self result]setText:[NSString stringWithFormat:@"%d",0]];
            }else
    {    switch(answer){
        case 1:
           
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 2:
            
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 3:
            
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 4:
           
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
    }
        }
    }

- (IBAction)seven:(id)sender {
    switch (keisan) {
            
        case 0:
            x=x*10+7;
            [[self result]setText:[NSString stringWithFormat:@"%g",x]];            break;
            
        case 1:
            y=y*10+7;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;

}
}
- (IBAction)eight:(id)sender {
    switch (keisan) {
            
        case 0:
            x=x*10+8;
            [[self result]setText:[NSString stringWithFormat:@"%g",x]];
            break;
            
        case 1:
            y=y*10+8;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
}
}
- (IBAction)nine:(id)sender {
    switch (keisan) {
            
        case 0:
           x=x*10+9;
            [[self result]setText:[NSString stringWithFormat:@"%g",x]];
             break;
            
        case 1:
            y=y*10+9;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
    }
}
- (IBAction)minus:(id)sender {
    answer=2;
    if (keisan==0) {
        
        keisan=1;
        shou=0;
        n=1;
        [[self result]setText:[NSString stringWithFormat:@"%d",0]];
       
    }else
    {    switch(answer){
        case 1:
            
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 2:
            
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 3:
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 4:
          
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
    }
    }
}

- (IBAction)AC:(id)sender {
 
    x=0;
    y=0;
    Z=0;
    keisan=0;
    shou=0;
    answer=0;
    
     [[self result]setText:[NSString stringWithFormat:@"%d",0]];
}

- (IBAction)waru:(id)sender {
   answer=4; if (keisan==0) {
        
        keisan=1;
        shou=0;
        n=1;
        [[self result]setText:[NSString stringWithFormat:@"%d",0]];
       
    }else
    {    switch(answer){
        case 1:
            Z=x+y;
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 2:
            Z=x-y;
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 3:
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 4:
        [[self result]setText:[NSString     stringWithFormat:@"%g",Z]];
            
            x=Z;
            y=0;
            keisan=1;
            break;
    }
    }
}

- (IBAction)multiply:(id)sender {
   answer=3;
    if (keisan==0) {
        
        keisan=1;
        shou=0;
        n=1;
        [[self result]setText:[NSString stringWithFormat:@"%d",0]];
       
    }else
    {    switch(answer){
        case 1:
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 2:
            
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 3:
           
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 4:
           
            [[self result]setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
    }
    }
}

- (IBAction)Re:(id)sender {
}


@end
