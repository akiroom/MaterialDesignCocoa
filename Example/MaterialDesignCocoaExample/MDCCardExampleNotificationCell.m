//
//  MDCCardExampleNotificationCell.m
//  MaterialDesignCocoaExample
//

#import "MDCCardExampleNotificationCell.h"
#import <MaterialDesignCocoa/MaterialDesignCocoa.h>

@implementation MDCCardExampleNotificationCell

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
  }
  return self;
}

- (void)awakeFromNib
{
  [super awakeFromNib];
  
  _titleLabel.font = [UIFont mdcTitleFont];
  _titleLabel.textColor = [UIColor mdcTextColor];
  
  _descriptionLabel.font = [UIFont mdcBody1Font];
  _descriptionLabel.textColor = [UIColor mdcSecondaryTextColor];
  
  _okayButton.titleLabel.font = [UIFont mdcButtonFont];
  [_okayButton setTitleColor:[UIColor mdcRedColorWithPaletteId:kUIColorMDCPaletteIdPrimary]
                    forState:UIControlStateNormal];
  
}

@end
