# github-notifications
MacOS notifications from GitHub

## Installation
1. Clone this repo
2. Install dependencies ```brew install jq terminal-notifier```   Optional: ```watch```
3. [Create GitHub Personal Access Token](https://github.com/settings/tokens/new) with scope ```notifications``` only
4. Open Keychain Access, select ```login``` on the left, click + to add a new entry, Keychain Item Name can be anything you want, set Account Name: ```github_token```, paste token
5. Schedule with cron or ```watch```, e.g. ```watch -n 600 ./notify.sh```
6. Click notification for https://github.com/notifications

### Notes
- Choose Banner (temporary) or Alert (persistent) in System Preferences > Notifications > terminal-notifier
- Mark notifications as Read to stop them
- Add a sound https://github.com/julienXX/terminal-notifier
- Try a more advanced notifier https://github.com/dschep/ntfy
