#if WINDOWS
using System.Windows.Forms;

namespace MuLauncher.Launcher.WinForms;

internal static class ApplicationConfiguration
{
    public static void Initialize()
    {
        Application.EnableVisualStyles();
        Application.SetHighDpiMode(HighDpiMode.SystemAware);
        Application.SetCompatibleTextRenderingDefault(false);
    }
}
#endif
