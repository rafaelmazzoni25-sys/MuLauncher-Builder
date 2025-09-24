#if WINDOWS
using System;
using System.Windows.Forms;
using MuLauncher.Launcher.WinForms.Forms;

namespace MuLauncher.Launcher.WinForms;

internal static class Program
{
    [STAThread]
    private static void Main()
    {
        ApplicationConfiguration.Initialize();
        using var preview = new LauncherSplashPreviewForm();
        Application.Run(preview);
    }
}
#endif
