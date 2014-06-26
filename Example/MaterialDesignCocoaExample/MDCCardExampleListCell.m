//
//  MDCCardExampleListCell.m
//  MaterialDesignCocoaExample
//

#import "MDCCardExampleListCell.h"

@implementation MDCCardExampleListCell

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
  }
  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  [self.previewImageView.layer setCornerRadius:2.0];
}

@end
