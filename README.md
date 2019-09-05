# github-notifications

MacOS notifications from GitHub

## Installation

1. Clone this repo
2. Install dependencies `brew install jq terminal-notifier`
3. Create a [GitHub Personal Access Token](https://github.com/settings/tokens/new) with **only one scope**: `notifications`
4. Copy the token to your clipboard
5. Open Keychain Access, select `login` on the left, click + to add a new entry, et Keychain Item Name: anything you want, Account Name: `github_token`, Password: paste the Personal Access Token from your clipboard
6. Call the script with the number of minutes between notifications, e.g. `./notify.sh 10` for 10 minute intervals
7. If there is a popup asking to allow the script to access to the keychain, type your Mac user password and click Always Allow
8. Click on the notification to open your GitHub notifications page

### Notes

- Choose Banner (temporary) or Alert (persistent) in System Preferences > Notifications > terminal-notifier
- Mark notifications as Read to stop them
- Add a sound https://github.com/julienXX/terminal-notifier
- Try a more advanced notifier https://github.com/dschep/ntfy
