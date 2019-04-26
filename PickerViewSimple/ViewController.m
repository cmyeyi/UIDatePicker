
#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UILabel *labelView;
@property (strong, nonatomic) IBOutlet UIButton *pickerButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //给按钮添加点击事件
    [self.pickerButton addTarget:self action:@selector(onClickButton:) forControlEvents:UIControlEventTouchDown];
}


- (IBAction)onClickButton:(id)sender {
    NSDate *date = self.datePicker.date;//取出UIDatePicker的时间
    NSLog(@"The date is:%@",[date descriptionWithLocale:[NSLocale currentLocale]]);
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"YYYY-MM-dd HH:mm:ss";
    NSString *dateString = [dateFormat stringFromDate:date];
    NSLog(@"formate date is:%@", dateString);
    self.labelView.text = dateString;
}


@end
