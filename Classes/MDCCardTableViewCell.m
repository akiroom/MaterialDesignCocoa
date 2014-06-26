//
//  MDCCardTableViewCell.m
//  Pods
//

#import "MDCCardTableViewCell.h"

@implementation MDCCardTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    [self configureMDCCardTableViewCell];
  }
  return self;
}

- (void)awakeFromNib
{
  [self configureMDCCardTableViewCell];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
  
  // Configure the view for the selected state
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  CGRect contentViewFrame = CGRectOffset(CGRectInset(self.contentView.frame, 8.0, 6.0),
                                         0.0, 3.0);
  [self.contentView setFrame:contentViewFrame];
  [self.cardView setFrame:contentViewFrame];
  
  // Hide separator
  self.separatorInset = (UIEdgeInsets){0.0, 0.0, 0.0, CGRectGetWidth(self.bounds)};
}

#pragma mark -

- (void)configureMDCCardTableViewCell
{
  self.selectionStyle = UITableViewCellSelectionStyleNone;

  _cardView = [[MDCCardView alloc] init];
  [self insertSubview:_cardView belowSubview:self.contentView];
  
  [self.contentView setClipsToBounds:YES];
  [self.contentView.layer setCornerRadius:2.0];
}

@end
