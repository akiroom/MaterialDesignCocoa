//
//  MDCDetailViewController.h
//  MaterialDesignCocoaExample
//
//  Created by Hiroki Akiyama on 2014/06/25.
//
//

#import <UIKit/UIKit.h>

@interface MDCDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
