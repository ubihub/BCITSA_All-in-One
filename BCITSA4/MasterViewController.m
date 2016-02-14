//
//  MasterViewController.m
//  BCITSA4
//
//  Created by James Kwon on 2015-11-13.
//  Copyright © 2015 ubihub@gmail.com. All rights reserved.
//

#import "MasterViewController.h"
//#import "BCITSAWebViewController.h"
#import "DetailViewController.h"
#import "TableCell.h"
#import "SingleViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController
@synthesize Icons;
@synthesize Title;
@synthesize Desc;
@synthesize TableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    //    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    //    self.navigationItem.rightBarButtonItem = addButton;
    
    UIImage* image3 = [UIImage imageNamed:@"header_logo3.png"];
    CGRect frameimg = CGRectMake(0, 0, 70, 30);
    UIButton *someButton = [[UIButton alloc] initWithFrame:frameimg];
    [someButton setBackgroundImage:image3 forState:UIControlStateNormal];
//    [someButton addTarget:self action:@selector(showAbout)
//         forControlEvents:UIControlEventTouchUpInside];
//    [someButton setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *aboutButton =[[UIBarButtonItem alloc] initWithCustomView:someButton];
    self.navigationItem.leftBarButtonItem=aboutButton;

//    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    Title =  [[NSMutableArray alloc] initWithObjects:@"BCITSA + SNS", @"The Link", @"Bus Map", @"Online Learning", @"Studyrooms", @"BCIT + SNS", @"BCIT Phonebook", @"My BCIT", @"About", nil];
    Desc  =  [[NSMutableArray alloc] initWithObjects:@"BCITSA Web Facebook Twitter", @"BCIT Magazine", @"Real-time BusMap around BCIT", @"Online Learning", @"Book Strudyrooms", @"BCIT Web Facebook Twitter", @"Call BCIT Offices", @"My BCIT Web", @"About this app",nil];
    Icons  =  [[NSMutableArray alloc] initWithObjects:@"BCITSA_logo.png", @"icon_about.png", @"icon_busmap.png", @"icon_campusmap.png", @"icon_book.png", @"bcit_logo.jpg", @"icon_phonelist.png", @"mybcit_icon400x400.png", @"icon_about.png",nil];
    
}

- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    [self.objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    SingleViewController *webs;
    FirstViewController *web0;
    SecondViewController *web1;
    ThirdViewController *web2;
    ForthViewController *web3;
    UITabBarController *tab;
    UITabBar *tabBar ;
    UITabBarItem *tabBarItem0;
    UITabBarItem *tabBarItem1;
    UITabBarItem *tabBarItem2;
    UITabBarItem *tabBarItem3;
    UINavigationController *nav;
    if ([[segue identifier] isEqualToString:@"ThreeTabs"]) {
        tab = (UITabBarController *)segue.destinationViewController;
        NSArray *vc = tab.viewControllers;
        tabBar = tab.tabBar;
        tabBarItem0 = [tabBar.items objectAtIndex:0];
        tabBarItem1 = [tabBar.items objectAtIndex:1];
        tabBarItem2 = [tabBar.items objectAtIndex:2];
        nav = (UINavigationController *) vc[0];
        web0 = (FirstViewController *) nav.topViewController;
        nav = (UINavigationController *) vc[1];
        web1 = (SecondViewController *) nav.topViewController;
        nav = (UINavigationController *) vc[2];
        web2 = (ThirdViewController *) nav.topViewController;
    } else if ([[segue identifier] isEqualToString:@"FourTabs"]) {
        tab = (UITabBarController *)segue.destinationViewController;
        NSArray *vc = tab.viewControllers;
        tabBar = tab.tabBar;
        tabBarItem0 = [tabBar.items objectAtIndex:0];
        tabBarItem1 = [tabBar.items objectAtIndex:1];
        tabBarItem2 = [tabBar.items objectAtIndex:2];
        tabBarItem3 = [tabBar.items objectAtIndex:3];
        nav = (UINavigationController *) vc[0];
        web0 = (FirstViewController *) nav.topViewController;
        nav = (UINavigationController *) vc[1];
        web1 = (SecondViewController *) nav.topViewController;
        nav = (UINavigationController *) vc[2];
        web2 = (ThirdViewController *) nav.topViewController;
        nav = (UINavigationController *) vc[3];
        web3 = (ForthViewController *) nav.topViewController;
    } else if ([[segue identifier] isEqualToString:@"OneTab"]) {
//        web0 = (FirstViewController *)segue.destinationViewController;
//        web0 = (FirstViewController *) nav.topViewController;
    }
    
    
    //    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
    //                                @"Main" bundle:nil];
    //    if ([vc[0] isKindOfClass:[UINavigationController class]]){
    //        nav = (UINavigationController *) vc[0];
    //        web = (FirstViewController *) nav.topViewController;
    //    }
    //
    //
    //    for (UIViewController *v in tab.viewControllers)
    //    {
    //        UIViewController *vc = v;
    //
    //        if ([v isKindOfClass:[UINavigationController class]])
    //             {
    // //                vc = [v visibleViewController];
    //                             nav = (UINavigationController *) v;
    //                             web = (FirstViewController *) nav.topViewController;
    //                             web.url = @"http://bcitsa.ca";
    //                 NSLog(@"UIVa");
    //             }
    //
    //             if ([vc isKindOfClass:[UIViewController class]])
    //             {
    ////                 MyViewController *myViewController = vc;
    ////                 [vc doSomething];
    //                 NSLog(@"UIV");
    //             }
    //     }
   switch (indexPath.row) {
        case 0:
            tab.title = @"BCITSA + SNS";
            web0.url = @"http://bcitsa.ca";
            web1.url = @"https://www.facebook.com/BCITSA";
            web2.url = @"https://mobile.twitter.com/bcitsa";
            tabBarItem0.title = @"BCITSA Web";
            //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
            //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
            tabBarItem1.title = @"Facebook";
//            tabBarItem1.image = [[UIImage imageNamed:@"facebook_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
//            tabBarItem1.selectedImage = [[UIImage imageNamed:@"facebook_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
            tabBarItem2.title = @"Twitter";
//            tabBarItem2.image = [[UIImage imageNamed:@"twitter_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
//            tabBarItem2.selectedImage = [[UIImage imageNamed:@"twitter_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
            break;
        case 1:
           tab.title = @"Link Magazine";
           web0.url = @"http://issuu.com/linkbcit";
           web1.url = @"http://www.linknewspaper.ca/";
           web2.url = @"https://www.facebook.com/linkbcit";
           tabBarItem0.title = @"Magazine";
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           tabBarItem1.title = @"Link Web";
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           tabBarItem2.title = @"Facebook";
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           
           //            [self performSegueWithIdentifier:@"BusMap" sender:self];
            break;
        case 2:
           tab.title = @"Bus Map";
            web0.url = @"http://nb.translink.ca/Map/Route/025";
            web1.url = @"http://nb.translink.ca/Map/Route/130";
            web2.url = @"http://nb.translink.ca/Map/Route/125";
            web3.url = @"http://nb.translink.ca/Map/Route/123";
           tabBarItem0.title = @"#25";
//                        tabBarItem0.selectedImage = [[UIImage imageNamed:@"bus_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
//                        tabBarItem0.image = [[UIImage imageNamed:@"bus_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
            tabBarItem1.title = @"#130";
//                        tabBarItem1.selectedImage = [[UIImage imageNamed:@"bus_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
//                        tabBarItem1.image = [[UIImage imageNamed:@"bus_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
            tabBarItem2.title = @"#125";
//                        tabBarItem2.selectedImage = [[UIImage imageNamed:@"bus_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
//                        tabBarItem2.image = [[UIImage imageNamed:@"bus_logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           
           //            [self performSegueWithIdentifier:@"BusMap" sender:self];
           tabBarItem3.title = @"#123";
            break;
        case 3:
           web0 = (FirstViewController *)segue.destinationViewController;
           web0.title = @"Online Learning";
           web0.url = @"https://learn.bcit.ca";
//            [self performSegueWithIdentifier:@"BusMap" sender:self];
            break;
        case 4:
           web0 = (FirstViewController *)segue.destinationViewController;
           web0.title = @"Study Rooms";
           web0.url = @"http://studyrooms.bcit.ca";
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //[self performSegueWithIdentifier:@"BusMap" sender:self];
            break;
        case 5:
           tab.title = @"BCIT + SNS";
           web0.url = @"http://m.bcit.ca";
           web1.url = @"https://m.facebook.com/bcit.ca";
           web2.url = @"https://mobile.twitter.com/bcit";
           tabBarItem0.title = @"Web";
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           tabBarItem1.title = @"Facebook";
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           tabBarItem2.title = @"Twitter";
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           
          //[self performSegueWithIdentifier:@"BusMap" sender:self];
           break;
        case 6:
           webs = (SingleViewController *)segue.destinationViewController;
           webs.title = @"BCIT Phonebook";
           webs.url = [[NSBundle mainBundle] pathForResource:@"Phonebook" ofType:@"htm"];
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //[self performSegueWithIdentifier:@"BusMap" sender:self];
            break;
        case 7:
           web0 = (FirstViewController *)segue.destinationViewController;
           web0.title = @"myBCIT";
           web0.url = @"http://my.bcit.ca";
           web0.BCITSAWeb.scrollView.zoomScale = 14.0;

           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //[self performSegueWithIdentifier:@"BusMap" sender:self];
           break;
        case 8:
           webs = (SingleViewController *)segue.destinationViewController;
           webs.title = @"About";
           webs.url = [[NSBundle mainBundle] pathForResource:@"About" ofType:@"htm"];
           //            tabBarItem0.selectedImage = [[UIImage imageNamed:@"selectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //            tabBarItem0.image = [[UIImage imageNamed:@"deselectimg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
           //[self performSegueWithIdentifier:@"BusMap" sender:self];
            break;
        default:
            break;
    }
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = self.objects[indexPath.row];
//        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
//        [controller setDetailItem:object];
//        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
//        controller.navigationItem.leftItemsSupplementBackButton = YES;

//        UITabBarController *controller = (UITabBarController *) [segue destinationViewController];
//        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
//        controller.navigationItem.leftItemsSupplementBackButton = YES;

//    }
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    NSDate *object = self.objects[indexPath.row];
//
//    switch (indexPath.row) {
//        case 0:
//            //[self performSegueWithIdentifier:@"BCITSAWeb" sender:sender];
//            //            viewController = (UITabBarController *)[BCITSAWebViewController alloc];
//            //            [self.navigationController pushViewController:viewController animated:YES];
//            break;
//        case 2:
//            //[self performSegueWithIdentifier:@"BusMap" sender:sender];
//            //            viewController = (UITabBarController *)[BCITSAWebViewController alloc];
//            //            [self.navigationController pushViewController:viewController animated:YES];
//            break;
//        default:
//            break;
//    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return Title.count;
   // return self.objects.count;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
//
//    NSDate *object = self.objects[indexPath.row];
//    cell.textLabel.text = [object description];
//    return cell;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    static NSString *CellIdentifier = @"TableCell";
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    //TableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        //cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
//        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        //cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
        //cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellIdentifier] autorelease];Ω
        //cell = [[[TableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    TableCell * customCell = (TableCell *)cell;
    // Set your data:
    
    // Configure the cell.
    int row = [indexPath row];
    UIImage *icon = [UIImage imageNamed:[Icons objectAtIndex:row]];
    customCell.imageView.image	= icon;
    
    customCell.textLabel.text = (NSString *)[Title objectAtIndex:row];
    customCell.detailTextLabel.text = (NSString *)[Desc objectAtIndex:row];
    //cell.DescLabel.text  = (NSString *)[Desc objectAtIndex:row];
    customCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return customCell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}



#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    int rowNo = indexPath.row;
//    NSString* msg =  [NSString stringWithFormat:@"%d",rowNo];

//    UIAlertController * alert=   [UIAlertController
//                                  alertControllerWithTitle:@"TableCell No"
//                                  message: msg
//                                  preferredStyle:UIAlertControllerStyleAlert];
//    
//    [self presentViewController:alert animated:YES completion:nil];

//    UIViewController *viewController = self.detailViewController;
//    FirstViewController *web;
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
//                                @"Main" bundle:nil];
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"ThreeTabs" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"ThreeTabs" sender:self];
            break;
        case 2:
            [self performSegueWithIdentifier:@"FourTabs" sender:self];
            break;
        case 3:
            [self performSegueWithIdentifier:@"OneTab" sender:self];
            break;
        case 4:
            [self performSegueWithIdentifier:@"OneTab" sender:self];
            break;
        case 5:
            [self performSegueWithIdentifier:@"ThreeTabs" sender:self];
            break;
        case 6:
            [self performSegueWithIdentifier:@"OneTab" sender:self];
            break;
        case 7:
            [self performSegueWithIdentifier:@"OneTab" sender:self];
            break;
        case 8:
            [self performSegueWithIdentifier:@"OneTab" sender:self];
            break;
        default:
            break;
    }
    
    
    /*
     *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */

}


@end
