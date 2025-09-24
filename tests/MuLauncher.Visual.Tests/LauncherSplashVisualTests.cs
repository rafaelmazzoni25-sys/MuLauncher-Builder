using System.IO;
using MuLauncher.Shared.UI.Models;
using MuLauncher.Shared.UI.Rendering;
using Xunit;
using Xunit.Sdk;

namespace MuLauncher.Visual.Tests;

public sealed class LauncherSplashVisualTests
{
    [Fact]
    public void Splash_default_skin_matches_snapshot()
    {
        if (!File.Exists(VisualTestContext.LegacyBackgroundAssetPath))
        {
            throw new SkipException($"Legacy background asset not found at '{VisualTestContext.LegacyBackgroundAssetPath}'.");
        }

        var options = LauncherOptions.CreateDefault();
        options.SetSplashBackgroundFromFile(VisualTestContext.LegacyBackgroundAssetPath);

        using var current = LauncherSplashRenderer.Render(options);

        var baselinePath = VisualTestContext.SplashBaselinePath;
        var receivedPath = VisualTestContext.SplashReceivedPath;
        var diffPath = VisualTestContext.SplashDiffPath;

        var matchesBaseline = VisualSnapshotComparer.EnsureBaselineAndCompare(current, baselinePath, receivedPath, diffPath, out var message);
        Assert.True(matchesBaseline, message);
    }
}
