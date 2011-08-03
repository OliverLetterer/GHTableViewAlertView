# GHTableViewAlertView
**GHTableViewAlertView** is another *UIAlertView* subclass which comes with a *UITableView* and tries to look like the default alert that you see while selecting a WiFi-Network.

## How to use GHTableViewAlertView

I think the best way to use **GHTableViewAlertView** is to

* subclass **GHTableViewAlertView**

* overwrite
* implement the **UITableViewDelegate** and **UITableViewDataSource** protocol.
* make sure that you return an instance or subclass of `GHTableViewAlertViewTableViewCell` in `tableView:tableView:cellForRowAtIndexPath:`

## Screenshot in my application [iHub - Social Coding](http://itunes.apple.com/de/app/ihub-social-coding/id433507459?mt=8)
<img src="https://github.com/OliverLetterer/GHTableViewAlertView/raw/master/Screenshots/1.jpg">
