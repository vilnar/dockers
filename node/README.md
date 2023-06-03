## Increasing the amount of inotify watchers

https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers

```
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

## vscode

### create extension
```sh
yo code
```

### run and debug
`f5`

### create vsix file
```sh
vsce package
```
