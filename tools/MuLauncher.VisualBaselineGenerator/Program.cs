using System;
using System.IO;
using MuLauncher.Shared.UI.Models;
using MuLauncher.Shared.UI.Rendering;
using SixLabors.ImageSharp;

var repositoryRoot = LocateRepositoryRoot();
var backgroundPath = Path.Combine(repositoryRoot, "images", "BACKGROUND_MAIN.bmp");
if (!File.Exists(backgroundPath))
{
    Console.Error.WriteLine($"Background asset not found at '{backgroundPath}'.");
    return;
}

var options = LauncherOptions.CreateDefault();
options.SetSplashBackgroundFromFile(backgroundPath);

using var image = LauncherSplashRenderer.Render(options);
var baselinePath = Path.Combine(repositoryRoot, "tests", "VisualBaselines", "TfrmLauncherSplash", "default.bmp.base64");
Directory.CreateDirectory(Path.GetDirectoryName(baselinePath)!);
using (var buffer = new MemoryStream())
{
    image.SaveAsBmp(buffer);
    var base64 = Convert.ToBase64String(buffer.ToArray(), Base64FormattingOptions.InsertLineBreaks);
    File.WriteAllText(baselinePath, base64);
}

Console.WriteLine($"Splash baseline saved to '{baselinePath}' as a base64-encoded BMP.");

static string LocateRepositoryRoot()
{
    var directory = new DirectoryInfo(AppContext.BaseDirectory);
    while (directory is not null)
    {
        if (Directory.Exists(Path.Combine(directory.FullName, ".git")))
        {
            return directory.FullName;
        }

        directory = directory.Parent;
    }

    throw new InvalidOperationException("Could not locate repository root.");
}
