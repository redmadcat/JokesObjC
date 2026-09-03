//
//  ViewController.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

#import "ViewController.h"
#import "UIColor+JKColor.h"
#import "UIFont+Roboto.h"
#import "UILabel+Factory.h"
#import "UIStackView+Factory.h"

@interface ViewController ()

@end

@implementation ViewController {
    UILabel *jokeIdTitleLabel;
    UILabel *jokeIdValueLabel;
    UILabel *jokeTypeTitleLabel;
    UILabel *jokeTypeValueLabel;
    UILabel *jokeSetupTitleLabel;
    UILabel *jokeSetupValueLabel;
    UIButton *jokeRefreshButton;
    UIButton *jokePunchlineButton;
    UIActivityIndicatorView *activityIndicator;
}

- (void)loadView {
    self.view = [UIView new];
    self.view.backgroundColor = [UIColor jkBackground];
    
    jokeIdTitleLabel =
        [UILabel createWith:@"JokeIdTitleKey"
              textAlignment:NSTextAlignmentLeft
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];

    UIStackView *parentStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisVertical
                   distribution:UIStackViewDistributionFill
                      alignment:UIStackViewAlignmentFill
                     andSpacing:5.0];
    
    [parentStackView addArrangedSubview:jokeIdTitleLabel];
    
    [self.view addSubview:parentStackView];
    UILayoutGuide *guide = self.view.layoutMarginsGuide;
    [parentStackView.leadingAnchor constraintEqualToAnchor:guide.leadingAnchor].active = YES;
    [parentStackView.trailingAnchor constraintEqualToAnchor:guide.trailingAnchor].active = YES;
    [parentStackView.topAnchor constraintEqualToAnchor:guide.topAnchor].active = YES;
    [parentStackView.bottomAnchor constraintEqualToAnchor:guide.bottomAnchor].active = YES;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
