//
//  ViewController.m
//  RigilTest
//
//  Created by Gregory Casamento on 11/9/20.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)updateButton:(id)sender
{
    [self.tableView reloadData];
}

// Table data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.nameTextField.text length];
}

- (UITableViewCell *)tableView:(UITableView *)tableView         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StandardCell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] init];
    }
    NSString *ch = [self.nameTextField.text substringWithRange: NSMakeRange(indexPath.row,1)];
    [cell setText: ch];
    return cell;
}

@end
