using System;
using System.IO;
using SixLabors.ImageSharp;
using SixLabors.ImageSharp.Advanced;
using SixLabors.ImageSharp.PixelFormats;
using SixLabors.ImageSharp.Processing;
using ImageSharpImage = SixLabors.ImageSharp.Image;

namespace MuLauncher.Visual.Tests;

internal static class VisualSnapshotComparer
{
    public static bool EnsureBaselineAndCompare(ImageSharpImage<Rgba32> current, string baselinePath, string receivedPath, string diffPath, out string message)
    {
        ArgumentNullException.ThrowIfNull(current);
        Directory.CreateDirectory(Path.GetDirectoryName(receivedPath)!);

        if (!File.Exists(baselinePath))
        {
            Directory.CreateDirectory(Path.GetDirectoryName(baselinePath)!);
            using var clone = current.Clone();
            SaveBaselineImage(clone, baselinePath);
            message = $"Baseline snapshot was missing. A new baseline has been generated at '{baselinePath}'. Review it and rerun the test.";
            return false;
        }

        using var baseline = LoadBaselineImage(baselinePath);
        return Compare(baseline, current, receivedPath, diffPath, out message);
    }

    private static ImageSharpImage<Rgba32> LoadBaselineImage(string baselinePath)
    {
        if (TryGetBase64Info(baselinePath, out _))
        {
            var base64 = File.ReadAllText(baselinePath);
            var bytes = Convert.FromBase64String(base64);
            return ImageSharpImage.Load<Rgba32>(bytes);
        }

        return ImageSharpImage.Load<Rgba32>(baselinePath);
    }

    private static void SaveBaselineImage(ImageSharpImage<Rgba32> image, string baselinePath)
    {
        if (TryGetBase64Info(baselinePath, out var rawExtension))
        {
            using var buffer = new MemoryStream();
            SaveImageToStream(image, rawExtension, buffer);
            var base64 = Convert.ToBase64String(buffer.ToArray(), Base64FormattingOptions.InsertLineBreaks);
            File.WriteAllText(baselinePath, base64);
            return;
        }

        image.Save(baselinePath);
    }

    private static bool TryGetBase64Info(string path, out string rawExtension)
    {
        var extension = Path.GetExtension(path);
        if (!extension.Equals(".base64", StringComparison.OrdinalIgnoreCase) &&
            !extension.Equals(".b64", StringComparison.OrdinalIgnoreCase))
        {
            rawExtension = string.Empty;
            return false;
        }

        var encodedName = Path.GetFileNameWithoutExtension(path);
        rawExtension = Path.GetExtension(encodedName);
        if (string.IsNullOrEmpty(rawExtension))
        {
            rawExtension = ".png";
        }

        return true;
    }

    private static void SaveImageToStream(ImageSharpImage<Rgba32> image, string extension, Stream destination)
    {
        var normalized = extension.TrimStart('.').ToLowerInvariant();
        switch (normalized)
        {
            case "bmp":
                image.SaveAsBmp(destination);
                break;
            case "jpg":
            case "jpeg":
                image.SaveAsJpeg(destination);
                break;
            case "gif":
                image.SaveAsGif(destination);
                break;
            default:
                image.SaveAsPng(destination);
                break;
        }
    }

    private static bool Compare(ImageSharpImage<Rgba32> expected, ImageSharpImage<Rgba32> actual, string receivedPath, string diffPath, out string message)
    {
        if (expected.Width != actual.Width || expected.Height != actual.Height)
        {
            message = $"Snapshot dimensions differ. Expected {expected.Width}x{expected.Height}, got {actual.Width}x{actual.Height}.";
            SaveArtifacts(actual, receivedPath, diffPath, expected.Width, expected.Height);
            return false;
        }

        long diffPixels = 0;
        using var diffImage = new ImageSharpImage<Rgba32>(expected.Width, expected.Height);

        var expectedFrame = expected.Frames.RootFrame;
        var actualFrame = actual.Frames.RootFrame;
        var diffFrame = diffImage.Frames.RootFrame;

        var expectedFrame = expected.Frames.RootFrame;
        var actualFrame = actual.Frames.RootFrame;
        var diffFrame = diffImage.Frames.RootFrame;

        var expectedFrame = expected.Frames.RootFrame;
        var actualFrame = actual.Frames.RootFrame;
        var diffFrame = diffImage.Frames.RootFrame;

        var expectedFrame = expected.Frames.RootFrame;
        var actualFrame = actual.Frames.RootFrame;
        var diffFrame = diffImage.Frames.RootFrame;

        for (var y = 0; y < expected.Height; y++)
        {
            var expectedRow = expectedFrame.GetPixelRowSpan(y);
            var actualRow = actualFrame.GetPixelRowSpan(y);
            var diffRow = diffFrame.GetPixelRowSpan(y);

            for (var x = 0; x < expectedRow.Length; x++)
            {
                var expectedPixel = expectedRow[x];
                var actualPixel = actualRow[x];
                if (!PixelsEqual(expectedPixel, actualPixel))
                {
                    diffPixels++;
                    diffRow[x] = new Rgba32(
                        (byte)Math.Abs(expectedPixel.R - actualPixel.R),
                        (byte)Math.Abs(expectedPixel.G - actualPixel.G),
                        (byte)Math.Abs(expectedPixel.B - actualPixel.B),
                        255);
                }
                else
                {
                    diffRow[x] = new Rgba32(0, 0, 0, 0);
                }
            }
        }

        if (diffPixels > 0)
        {
            message = $"Snapshot mismatch detected: {diffPixels} pixels differ from the baseline.";
            SaveArtifacts(actual, receivedPath, diffPath, diffImage);
            return false;
        }

        message = string.Empty;
        return true;
    }

    private static bool PixelsEqual(Rgba32 expected, Rgba32 actual) =>
        expected.R == actual.R &&
        expected.G == actual.G &&
        expected.B == actual.B &&
        expected.A == actual.A;

    private static void SaveArtifacts(ImageSharpImage<Rgba32> actual, string receivedPath, string diffPath, int expectedWidth, int expectedHeight)
    {
        Directory.CreateDirectory(Path.GetDirectoryName(receivedPath)!);
        using var canvas = new ImageSharpImage<Rgba32>(Math.Max(expectedWidth, actual.Width), Math.Max(expectedHeight, actual.Height));
        canvas.Mutate(ctx => ctx.Fill(Color.Black));
        canvas.SaveAsPng(diffPath);
        actual.SaveAsPng(receivedPath);
    }

    private static void SaveArtifacts(ImageSharpImage<Rgba32> actual, string receivedPath, string diffPath, ImageSharpImage<Rgba32> diff)
    {
        Directory.CreateDirectory(Path.GetDirectoryName(receivedPath)!);
        diff.SaveAsPng(diffPath);
        actual.SaveAsPng(receivedPath);
    }
}
