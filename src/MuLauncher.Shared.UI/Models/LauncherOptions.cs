using System;
using System.IO;
using ImageSharpImage = SixLabors.ImageSharp.Image;
using SixLabors.ImageSharp.PixelFormats;

namespace MuLauncher.Shared.UI.Models;

public sealed class LauncherOptions
{
    public bool ShowBrowse { get; set; }
    public bool ShowOption { get; set; }
    public bool ShowUpdate { get; set; }
    public bool ShowSplash { get; set; }
    public bool ShowStatus { get; set; }

    public string BrowseUrl { get; set; } = string.Empty;
    public string SplashBackgroundData { get; set; } = string.Empty;
    public string SplashRegionData { get; set; } = string.Empty;

    public string ServerName { get; set; } = string.Empty;
    public string ServerAddress { get; set; } = string.Empty;

    public static LauncherOptions CreateDefault() => new()
    {
        ShowBrowse = true,
        ShowOption = true,
        ShowUpdate = true,
        ShowSplash = true,
        ShowStatus = true,
        BrowseUrl = "https://mulauncher.local/",
        ServerName = "Mu Online",
        ServerAddress = "127.0.0.1"
    };

    public void SetSplashBackgroundFromFile(string filePath)
    {
        if (string.IsNullOrEmpty(filePath))
        {
            throw new ArgumentException("File path must not be null or empty.", nameof(filePath));
        }

        SplashBackgroundData = Convert.ToBase64String(File.ReadAllBytes(filePath));
    }

    public void SetSplashRegionFromFile(string filePath)
    {
        if (string.IsNullOrEmpty(filePath))
        {
            throw new ArgumentException("File path must not be null or empty.", nameof(filePath));
        }

        SplashRegionData = Convert.ToBase64String(File.ReadAllBytes(filePath));
    }

    public bool HasSplashBackground => !string.IsNullOrWhiteSpace(SplashBackgroundData);

    public ImageSharpImage<Rgba32> LoadSplashBackgroundImage()
    {
        if (!HasSplashBackground)
        {
            throw new InvalidOperationException("Launcher options do not contain splash background data.");
        }

        return ImageSharpImage.Load<Rgba32>(Convert.FromBase64String(SplashBackgroundData));
    }

    public ImageSharpImage<L8>? LoadSplashRegionMask()
    {
        if (string.IsNullOrWhiteSpace(SplashRegionData))
        {
            return null;
        }

        return ImageSharpImage.Load<L8>(Convert.FromBase64String(SplashRegionData));
    }

    public LauncherOptions Clone() => new()
    {
        ShowBrowse = ShowBrowse,
        ShowOption = ShowOption,
        ShowUpdate = ShowUpdate,
        ShowSplash = ShowSplash,
        ShowStatus = ShowStatus,
        BrowseUrl = BrowseUrl,
        SplashBackgroundData = SplashBackgroundData,
        SplashRegionData = SplashRegionData,
        ServerName = ServerName,
        ServerAddress = ServerAddress
    };
}
