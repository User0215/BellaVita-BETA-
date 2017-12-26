//  ViewController.m
//  erosion
//
//  Created by Chandler on 10/15/17.
//  Copyright © 2017 White Inc. All rights reserved.
//

#import "ViewController.h"
#import "foundation/foundation.h"

@interface ViewController ()

@end

@implementation ViewController



//Facebook button
- (IBAction)Button:(id)sender
{
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://www.facebook.com/2016BellaVita"]];
    
    
}


//Website button
- (IBAction)Website:(id)sender
{
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://mattincs.wixsite.com/bellavita"]];
    
    
}


//About button
- (IBAction)About:(id)sender
{
    
    NSString *title = @"About";
    NSString *message = @"Made by Chandler White (@User0215) Licensed under WTFPL";
    NSString *okText = @"OK";
    NSString *okText2 = @"Source Code";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title  message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okText style: UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *Sourcebtn = [UIAlertAction actionWithTitle:okText2 style: UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                                {
                                    
                                    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@""]];
                                }];
    
    
    [alert addAction :okButton];
    [alert addAction :Sourcebtn];
    
    
    [self presentViewController:alert animated:YES completion:nil];
    
}


- (IBAction)Re:(id)sender
{
    
    MFMailComposeViewController *mailcomp = [[MFMailComposeViewController alloc] init];
    mailcomp.mailComposeDelegate = self;
    [mailcomp setToRecipients:@[@"xuser0215@gmail.com"]];
    [mailcomp setSubject:@"Bug report"];
    
    [self presentViewController:mailcomp animated:YES completion:nil];
    

    
}






//phone button
- (IBAction)Phone:(id)sender
{
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"tel:(207)-316-9703"]];
    
}

//Appointment button
- (IBAction)Appointment:(id)sender
{
    
    NSString *title3 = @"Notice";
    NSString *message3 = @"How would you like to contact?";
    NSString *okText3 = @"OK";
    NSString *SMSText = @"SMS";
    NSString *Messenger = @"Messenger";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title3  message:message3 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okText3 style:
                               UIAlertActionStyleCancel handler:nil];
    [alert addAction :okButton];
    
    UIAlertAction *MessengerButton = [UIAlertAction actionWithTitle:Messenger style: UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                                {
                                    
        
                                
                                    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"fb-messenger://user-thread/2016bellavita"]];

                                    
                                }];
    [alert addAction :MessengerButton];
    
    UIAlertAction *SMSButton = [UIAlertAction actionWithTitle:SMSText style: UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                                      {
                                          
                                          
                                          MFMessageComposeViewController *SMSComp = [[MFMessageComposeViewController alloc] init];
                                          SMSComp.body = @"I would like to make an appointment for (enter date and time)";
                                          SMSComp.recipients = @[@"(207)-316-9703"];
                                          
                                          [self presentViewController:SMSComp animated:YES completion:nil];
                                          

                                          
                                          
                                          
                                      }];
    
    [alert addAction :SMSButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}


- (IBAction)HoursT:(id)sender
{
    
    NSString *title2 = @"Hours";
    NSString *message2 = @"Sun-Mon - Closed    Tue-Friday - 9-5     Sat - 8-12";
    NSString *okText2 = @"OK";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title2  message:message2 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okText2 style:
                               UIAlertActionStyleCancel handler:nil];
    [alert addAction :okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
}




    
    - (void)viewDidLoad {
        [super viewDidLoad];
        
        
        
    }

    
    




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
  }

  //something to do with the mail button
  - (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
        {
            
            [self dismissViewControllerAnimated:YES completion:nil];
            
            
        }
 //something to do with the appointment button. Cancel button not working.
 - (void)messageComposeController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
        {
            
            [self dismissViewControllerAnimated:YES completion:nil];
            
        }

        
        
        
        
        
        
              
              @end

