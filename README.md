# GHTableViewAlertView
**GHTableViewAlertView** is another *UIAlertView* subclass which comes with a *UITableView* and tries to look like the default alert that you see while selecting a WiFi-Network.

## How to use GHTableViewAlertView

I think the best way to use **GHTableViewAlertView** is to

* subclass **GHTableViewAlertView**

*overwrite

```objective-c
- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    if (self = [super initWithTitle:NSLocalizedString(@"Accounts", @"") message:nil delegate:self cancelButtonTitle:NSLocalizedString(@"Cancel", @"") otherButtonTitles:NSLocalizedString(@"Add", @""), nil]) {
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        
        // do some other setup
    }
    return self;
}
```

* implement the **UITableViewDelegate** and **UITableViewDataSource**.

## Screenshot
<img src="https://github.com/OliverLetterer/GHTableViewAlertView/raw/master/Screenshots/1.png">