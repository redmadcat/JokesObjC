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
#import "UIView+Extension.h"
#import "UILabelPadded.h"

@interface ViewController ()

@end

@implementation ViewController {
    UILabelPadded *jokeIdTitleLabel;
    UILabelPadded *jokeIdValueLabel;
    UILabelPadded *jokeTypeTitleLabel;
    UILabelPadded *jokeTypeValueLabel;
    UILabelPadded *jokeSetupTitleLabel;
    UILabelPadded *jokeSetupValueLabel;
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
    jokeIdTitleLabel.padding = UIEdgeInsetsMake(0, 16, 0, 0);
    
    jokeIdValueLabel =
        [UILabel createWith:@"---"
              textAlignment:NSTextAlignmentRight
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    jokeIdValueLabel.padding = UIEdgeInsetsMake(0, 0, 0, 16);
        
    jokeTypeTitleLabel =
        [UILabel createWith:@"JokeTypeTitleKey"
              textAlignment:NSTextAlignmentLeft
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    jokeTypeTitleLabel.padding = UIEdgeInsetsMake(0, 16, 0, 0);
    
    jokeTypeValueLabel =
        [UILabel createWith:@"---"
              textAlignment:NSTextAlignmentRight
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    jokeTypeValueLabel.padding = UIEdgeInsetsMake(0, 0, 0, 16);
    
    jokeSetupTitleLabel =
        [UILabel createWith:@"JokeSetupTitleKey"
              textAlignment:NSTextAlignmentLeft
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    jokeSetupTitleLabel.padding = UIEdgeInsetsMake(0, 16, 0, 16);
    
    jokeSetupValueLabel =
        [UILabel createWith:@"---"
              textAlignment:NSTextAlignmentLeft
                  textColor:[UIColor jkBlackColor]
                       font:[UIFont robotoMedium16]];
    
    [jokeSetupValueLabel addBorderTo:Top borderWidth:2 borderColor:[UIColor jkBlackColor]];
    [jokeSetupValueLabel addBorderTo:Bottom borderWidth:2 borderColor:[UIColor jkBlackColor]];
            
    jokeRefreshButton = [UIButton new];
    jokeRefreshButton.translatesAutoresizingMaskIntoConstraints = NO;
    [jokeRefreshButton setImage:[UIImage systemImageNamed:@"arrow.trianglehead.2.clockwise.rotate.90"] forState:UIControlStateNormal];
    [jokeRefreshButton setTintColor:[UIColor blackColor]];
    jokeRefreshButton.backgroundColor = [UIColor whiteColor];
    jokeRefreshButton.layer.borderWidth = 2;
    jokeRefreshButton.layer.cornerRadius = 8;
    
    jokePunchlineButton = [UIButton new];
    jokePunchlineButton.backgroundColor = [UIColor greenColor];
    [jokePunchlineButton setTitle:@"Show punchline" forState:UIControlStateNormal];
    [jokePunchlineButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    jokePunchlineButton.translatesAutoresizingMaskIntoConstraints = NO;
    jokePunchlineButton.layer.borderWidth = 2;
    jokePunchlineButton.layer.cornerRadius = 8;
    
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
    [UIStackView createWithAxis:UILayoutConstraintAxisVertical
                   distribution:UIStackViewDistributionFillProportionally
                      alignment:UIStackViewAlignmentCenter
                        spacing:5.0
                    borderWidth:2.0
                   corderRadius:8.0];
    
    UIStackView *jokeActionStackView =
    [UIStackView createWithAxis:UILayoutConstraintAxisHorizontal
                   distribution:UIStackViewDistributionFill
                      alignment:UIStackViewAlignmentFill
                        spacing:24.0
                    borderWidth:0.0
                   corderRadius:0.0];
    
    [jokeTitleStackView addArrangedSubview:jokeIdTitleLabel];
    [jokeTitleStackView addArrangedSubview:jokeIdValueLabel];
    
    [jokeTypeStackView addArrangedSubview:jokeTypeTitleLabel];
    [jokeTypeStackView addArrangedSubview:jokeTypeValueLabel];
        
    UIView *view = [UIView new];
    [jokeSetupStackView addArrangedSubview:jokeSetupTitleLabel];
    [jokeSetupStackView addArrangedSubview:jokeSetupValueLabel];
    [jokeSetupStackView addArrangedSubview:view];
    
    [jokeActionStackView addArrangedSubview:jokeRefreshButton];
    [jokeActionStackView addArrangedSubview:jokePunchlineButton];
    
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
    
    [NSLayoutConstraint activateConstraints:@[
        [rootStackView.leadingAnchor constraintEqualToAnchor:guide.leadingAnchor constant:24],
        [rootStackView.trailingAnchor constraintEqualToAnchor:guide.trailingAnchor constant:-24],
        [rootStackView.topAnchor constraintEqualToAnchor:guide.topAnchor constant:48],
        [rootStackView.bottomAnchor constraintEqualToAnchor:guide.bottomAnchor constant:-48],
        
        [view.heightAnchor constraintEqualToConstant:24],
        [jokeTitleStackView.heightAnchor constraintEqualToConstant:64],
        [jokeTypeStackView.heightAnchor constraintEqualToConstant:64],
        [jokeSetupStackView.heightAnchor constraintEqualToConstant:244],
        [jokeActionStackView.heightAnchor constraintEqualToConstant:64],
                
        [jokeSetupTitleLabel.heightAnchor constraintEqualToConstant:61],
        [jokeRefreshButton.widthAnchor constraintEqualToConstant:64],
        
        [jokeSetupTitleLabel.leadingAnchor constraintEqualToAnchor:jokeSetupStackView.leadingAnchor],
        [jokeSetupTitleLabel.trailingAnchor constraintEqualToAnchor:jokeSetupStackView.trailingAnchor],
        [jokeSetupValueLabel.leadingAnchor constraintEqualToAnchor:jokeSetupStackView.leadingAnchor constant:16],
        [jokeSetupValueLabel.trailingAnchor constraintEqualToAnchor:jokeSetupStackView.trailingAnchor constant:-16],
    ]];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
