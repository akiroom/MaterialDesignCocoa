//
//  MDCCardExampleNotificationCell.h
//  MaterialDesignCocoaExample
//

#import "MDCCardTableViewCell.h"

@interface MDCCardExampleNotificationCell : MDCCardTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *okayButton;

@end
