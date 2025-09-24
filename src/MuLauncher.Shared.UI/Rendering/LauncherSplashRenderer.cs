using System;
using MuLauncher.Shared.UI.Models;
using SixLabors.ImageSharp.Advanced;
using SixLabors.ImageSharp.PixelFormats;
using SixLabors.ImageSharp.Processing;
using ImageSharpImage = SixLabors.ImageSharp.Image;

namespace MuLauncher.Shared.UI.Rendering;

public static class LauncherSplashRenderer
{
    public static ImageSharpImage<Rgba32> Render(LauncherOptions options)
    {
        ArgumentNullException.ThrowIfNull(options);

        if (!options.HasSplashBackground)
        {
            throw new InvalidOperationException("Launcher options do not have splash background data defined.");
        }

        var background = options.LoadSplashBackgroundImage();
        try
        {
            var output = background.Clone();

            using var region = options.LoadSplashRegionMask();
            if (region is not null)
            {
                if (region.Width != output.Width || region.Height != output.Height)
                {
                    region.Mutate(ctx => ctx.Resize(output.Width, output.Height));
                }

                var outputFrame = output.Frames.RootFrame;
                var regionFrame = region.Frames.RootFrame;

                for (var y = 0; y < output.Height; y++)
                {
                    var row = outputFrame.GetPixelRowSpan(y);
                    var maskRow = regionFrame.GetPixelRowSpan(y);
                    for (var x = 0; x < row.Length; x++)
                    {
                        row[x].A = maskRow[x].PackedValue;
                    }
                }
            }

            return output;
        }
        finally
        {
            background.Dispose();
        }
    }
}
