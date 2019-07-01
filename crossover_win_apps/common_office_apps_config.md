##### gnome environment

**env LC_ALL=ru_RU.UTF-8** for proper rus symbols processing

**StartupWMClass=winword.exe** for correct icons resolution

```bash
~/.local/share/applications/*Microsoft Word 2010.desktop
~/.local/share/applications/*Microsoft Excel 2010.desktop

Exec=env LC_ALL=ru_RU.UTF-8 "/home/...
StartupWMClass=excel.exe
or
StartupWMClass=winword.exe
```
