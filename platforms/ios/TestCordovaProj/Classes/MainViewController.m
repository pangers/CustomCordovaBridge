/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

//
//  MainViewController.h
//  TestCordovaProj
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "MainViewController.h"
#import "FileWriter.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIButton *nativeButton;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect webBounds = self.webView.bounds;
    CGRect webViewBound = CGRectMake(webBounds.origin.x, webBounds.origin.y + 50, webBounds.size.width, webBounds.size.height - 50);
    
    self.webView.frame = webViewBound;
}

- (IBAction)nativeButtonPressed:(id)sender {
    NSLog(@"Hi");
    FileWriter* bridge =  [self.pluginObjects objectForKey:@"FileWriter"];
    NSDictionary* eventData = [NSDictionary dictionaryWithObjectsAndKeys:@"nativeClick", @"eventType", nil];
    [bridge reportEvent:eventData];
}

-(void)changeButtonText:(NSString *)buttonText
{
    NSLog(@"changeButtonText");
    [self.nativeButton setTitle:buttonText forState:UIControlStateNormal];
}

@end
