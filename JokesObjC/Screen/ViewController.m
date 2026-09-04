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
    
    jokeIdValueLabel =
        [UILabel createWith:@"---"
              textAlignment:NSTextAlignmentRight
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];

    UIStackView *jokeTitleStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisHorizontal
                   distribution:UIStackViewDistributionFillEqually
                      alignment:UIStackViewAlignmentFill
                        spacing:5.0
                    borderWidth:2.0
                   corderRadius:8.0];
    
    UIStackView *jokeTypeStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisHorizontal
                   distribution:UIStackViewDistributionFillEqually
                      alignment:UIStackViewAlignmentFill
                        spacing:5.0
                    borderWidth:2.0
                   corderRadius:8.0];
    
    UIStackView *jokeSetupStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisHorizontal
                   distribution:UIStackViewDistributionFillEqually
                      alignment:UIStackViewAlignmentFill
                        spacing:5.0
                    borderWidth:2.0
                   corderRadius:8.0];
    
    UIStackView *jokeActionStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisHorizontal
                   distribution:UIStackViewDistributionFillEqually
                      alignment:UIStackViewAlignmentFill
                        spacing:5.0
                    borderWidth:0.0
                   corderRadius:0.0];
        
    [jokeTitleStackView addArrangedSubview:jokeIdTitleLabel];
    [jokeTitleStackView addArrangedSubview:jokeIdValueLabel];
    
    UIStackView *rootStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisVertical
                   distribution:UIStackViewDistributionFill
                      alignment:UIStackViewAlignmentFill
                     andSpacing:24.0];
    
    [rootStackView addArrangedSubview:jokeTitleStackView];
    [rootStackView addArrangedSubview:jokeTypeStackView];
    [rootStackView addArrangedSubview:jokeSetupStackView];
    [rootStackView addArrangedSubview:[UIView new]];
    [rootStackView addArrangedSubview:jokeActionStackView];
    
    [self.view addSubview:rootStackView];
    UILayoutGuide *guide = self.view.safeAreaLayoutGuide;
    [rootStackView.leadingAnchor constraintEqualToAnchor:guide.leadingAnchor constant:24].active = YES;
    [rootStackView.trailingAnchor constraintEqualToAnchor:guide.trailingAnchor constant:-24].active = YES;
    [rootStackView.topAnchor constraintEqualToAnchor:guide.topAnchor constant:48].active = YES;
    [rootStackView.bottomAnchor constraintEqualToAnchor:guide.bottomAnchor constant:-48].active = YES;
    
    [jokeIdTitleLabel.leadingAnchor constraintEqualToAnchor:rootStackView.leadingAnchor constant:16].active = YES;
    [jokeIdValueLabel.trailingAnchor constraintEqualToAnchor:rootStackView.trailingAnchor constant:-16].active = YES;
    
    [jokeTitleStackView.heightAnchor constraintEqualToConstant:64].active = YES;
    [jokeTypeStackView.heightAnchor constraintEqualToConstant:64].active = YES;
    [jokeSetupStackView.heightAnchor constraintEqualToConstant:244].active = YES;
    [jokeActionStackView.heightAnchor constraintEqualToConstant:64].active = YES;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
