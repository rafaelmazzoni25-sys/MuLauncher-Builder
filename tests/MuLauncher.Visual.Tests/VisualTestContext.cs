using System;
using System.IO;

namespace MuLauncher.Visual.Tests;

internal static class VisualTestContext
{
    private static readonly Lazy<string> RepoRootLazy = new(LocateRepositoryRoot);

    public static string RepositoryRoot => RepoRootLazy.Value;
    public static string BaselinesDirectory => Path.Combine(RepositoryRoot, "tests", "VisualBaselines");
    public static string SplashBaselinePath => Path.Combine(BaselinesDirectory, "TfrmLauncherSplash", "default.bmp.base64");
    public static string ArtifactsDirectory => Path.Combine(RepositoryRoot, "tests", "artifacts");
    public static string SplashReceivedPath => Path.Combine(ArtifactsDirectory, "TfrmLauncherSplash.default.received.png");
    public static string SplashDiffPath => Path.Combine(ArtifactsDirectory, "TfrmLauncherSplash.default.diff.png");
    public static string LegacyBackgroundAssetPath => Path.Combine(RepositoryRoot, "images", "BACKGROUND_MAIN.bmp");

    private static string LocateRepositoryRoot()
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

        throw new InvalidOperationException("Failed to locate the repository root ('.git' folder not found).");
    }
}
