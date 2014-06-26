//
//  MDCDetailViewController.h
//  MaterialDesignCocoaExample
//

#import <UIKit/UIKit.h>

@interface MDCDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
