//
//  MDCMasterViewController.m
//  MaterialDesignCocoaExample
//

#import "MDCMasterViewController.h"
#import <MaterialDesignCocoa/MDCTableViewCell.h>
#import "MDCDetailViewController.h"
#import "MDCCardExampleViewController.h"

@interface MDCMasterViewController () {
  NSMutableArray *_objects;
}
@end

@implementation MDCMasterViewController

- (void)awakeFromNib
{
  [super awakeFromNib];
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self.navigationController.navigationBar setBarStyle:UIBarStyleBlackOpaque];
  [self.navigationController.navigationBar setTranslucent:NO];
  
  
  self.tableView.rowHeight = 64.0;

  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  MDCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
  
  switch (indexPath.row) {
    case 0:
      [cell.textLabel setText:@"Card & Color"];
      [cell.detailTextLabel setText:@"Example for MDCCardView & UIColor extensions."];
      break;
    default:
      break;
  }
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  switch (indexPath.row) {
    case 0: {
      [self performSegueWithIdentifier:@"pushToCardExample" sender:self];
      break;
    }
    default: {
      break;
    }
  }
}

@end
