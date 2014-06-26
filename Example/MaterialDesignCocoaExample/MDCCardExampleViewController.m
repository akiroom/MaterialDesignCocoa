//
//  MDCCardExampleViewController.m
//  MaterialDesignCocoaExample
//

#import "MDCCardExampleViewController.h"
#import <MaterialDesignCocoa/MaterialDesignCocoa.h>
#import "MDCCardExampleNotificationCell.h"
#import "MDCCardExampleListCell.h"

@interface MDCCardExampleViewController ()

@end

@implementation MDCCardExampleViewController{
  BOOL _hidesNotification;
}

- (id)initWithStyle:(UITableViewStyle)style
{
  self = [super initWithStyle:style];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  _hidesNotification = NO;
  self.title = @"Card & Color";
  self.tableView.backgroundColor = [UIColor colorWithWhite:0.91 alpha:1.0];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (!_hidesNotification && indexPath.section == 0) {
    return 140.0;
  } else {
    return 100.0;
  }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  // Return the number of sections.
  if (_hidesNotification) {
    return 1;
  } else {
    return 2;
  }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  if (!_hidesNotification && section == 0) {
    return 1;
  } else {
    return 19;
  }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (!_hidesNotification && indexPath.section == 0) {
    MDCCardExampleNotificationCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NotificationCell"
                                                                           forIndexPath:indexPath];
    [cell setBackgroundColor:self.tableView.backgroundColor];
    [cell.titleLabel setText:@"Card Component"];
    [cell.descriptionLabel setText:@"This is a card components examples. Inspired by Google Material Design."];
    [cell.okayButton addTarget:self action:@selector(okayNotification:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
  } else {
    MDCCardExampleListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListCell"];
    [cell setBackgroundColor:self.tableView.backgroundColor];
    switch (indexPath.row) {
      case 0:
        [cell.titleLabel setText:@"Red"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcRedColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 1:
        [cell.titleLabel setText:@"Pink"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcPinkColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 2:
        [cell.titleLabel setText:@"Purple"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcPurpleColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 3:
        [cell.titleLabel setText:@"Deep Purple"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcDeepPurpleColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 4:
        [cell.titleLabel setText:@"Indigo"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcIndigoColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 5:
        [cell.titleLabel setText:@"Blue"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcBlueColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 6:
        [cell.titleLabel setText:@"Light Blue"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcLightBlueColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 7:
        
        [cell.titleLabel setText:@"Cyan"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcCyanColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 8:
        [cell.titleLabel setText:@"Teal"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcTealColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 9:
        [cell.titleLabel setText:@"Green"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcGreenColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 10:
        [cell.titleLabel setText:@"Light Green"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcLightGreenColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 11:
        [cell.titleLabel setText:@"Lime"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcLimeColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 12:
        [cell.titleLabel setText:@"Yellow"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcYellowColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 13:
        [cell.titleLabel setText:@"Amber"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcAmberColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 14:
        [cell.titleLabel setText:@"Orange"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcOrangeColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 15:
        [cell.titleLabel setText:@"Deep Orange"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcDeepOrangeColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 16:
        [cell.titleLabel setText:@"Brown"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcBrownColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 17:
        [cell.titleLabel setText:@"Gray"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcGrayColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      case 18:
        [cell.titleLabel setText:@"Blue Gray"];
        [cell.previewImageView setBackgroundColor:[UIColor mdcBlueGrayColorWithPaletteId:kUIColorMDCPaletteIdPrimary]];
        break;
      default:
        break;
    }
    return cell;
  }
}

- (void)okayNotification:(id)sender
{
  _hidesNotification = YES;
  [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:0]
                withRowAnimation:UITableViewRowAnimationTop];
}

@end
