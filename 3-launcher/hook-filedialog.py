# Hook for filedialog import into the launcher. For compiling with Pyinstaller.
# Possibly needed to be able to call filedialog.askdirectory in main program when running from compiled launcher.

from PyInstaller.utils.hooks import collect_submodules
hiddenimports = collect_submodules('tkinter')