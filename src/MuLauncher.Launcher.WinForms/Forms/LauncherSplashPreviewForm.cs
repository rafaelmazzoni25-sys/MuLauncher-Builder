#if WINDOWS
using System;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using MuLauncher.Shared.UI.Controls;
using MuLauncher.Shared.UI.Models;
using MuLauncher.Shared.UI.Rendering;
using SixLabors.ImageSharp.Formats.Png;
using SixLabors.ImageSharp.PixelFormats;

namespace MuLauncher.Launcher.WinForms.Forms;

public sealed class LauncherSplashPreviewForm : Form
{
    private readonly LauncherOptionsPropertyPanel _propertyPanel;
    private readonly PictureBox _previewPictureBox;
    private readonly Button _showSplashButton;
    private readonly Label _statusLabel;

    public LauncherSplashPreviewForm()
    {
        Text = "Launcher splash preview";
        Width = 960;
        Height = 600;
        StartPosition = FormStartPosition.CenterScreen;

        _propertyPanel = new LauncherOptionsPropertyPanel
        {
            Dock = DockStyle.Fill
        };

        _previewPictureBox = new PictureBox
        {
            Dock = DockStyle.Fill,
            SizeMode = PictureBoxSizeMode.Zoom,
            BackColor = Color.Black
        };

        _showSplashButton = new Button
        {
            Text = "Open splash preview",
            Dock = DockStyle.Top,
            Height = 32
        };
        _showSplashButton.Click += (_, _) => ShowSplash();

        _statusLabel = new Label
        {
            Dock = DockStyle.Top,
            Height = 24,
            TextAlign = ContentAlignment.MiddleLeft
        };

        var rightPanel = new Panel
        {
            Dock = DockStyle.Fill,
            Padding = new Padding(8)
        };
        rightPanel.Controls.Add(_previewPictureBox);
        rightPanel.Controls.Add(_statusLabel);
        rightPanel.Controls.Add(_showSplashButton);

        var split = new SplitContainer
        {
            Dock = DockStyle.Fill,
            FixedPanel = FixedPanel.Panel1,
            SplitterDistance = 320
        };
        split.Panel1.Controls.Add(_propertyPanel);
        split.Panel2.Controls.Add(rightPanel);

        Controls.Add(split);

        var options = LauncherOptions.CreateDefault();
        TryLoadLegacyAssets(options);
        _propertyPanel.Bind(options);
        _propertyPanel.OptionsChanged += (_, _) => UpdatePreview();

        UpdatePreview();
    }

    private void ShowSplash()
    {
        if (_propertyPanel.Options is null)
        {
            return;
        }

        try
        {
            using var splash = new LauncherSplashForm(_propertyPanel.Collect());
            splash.AutoCloseDelay = TimeSpan.FromSeconds(2.5);
            splash.ShowDialog(this);
        }
        catch (InvalidOperationException ex)
        {
            MessageBox.Show(this, ex.Message, "Splash preview", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }
    }

    private void UpdatePreview()
    {
        if (_propertyPanel.Options is null)
        {
            return;
        }

        try
        {
            using var image = LauncherSplashRenderer.Render(_propertyPanel.Options);
            using var bitmap = ToBitmap(image);
            _previewPictureBox.Image?.Dispose();
            _previewPictureBox.Image = (Bitmap)bitmap.Clone();
            _statusLabel.Text = $"Resolution: {bitmap.Width}x{bitmap.Height}";
        }
        catch (InvalidOperationException ex)
        {
            _statusLabel.Text = ex.Message;
            _previewPictureBox.Image?.Dispose();
            _previewPictureBox.Image = null;
        }
    }

    private static Bitmap ToBitmap(SixLabors.ImageSharp.Image<Rgba32> image)
    {
        using var stream = new MemoryStream();
        image.Save(stream, new PngEncoder());
        stream.Position = 0;
        return new Bitmap(stream);
    }

    private static void TryLoadLegacyAssets(LauncherOptions options)
    {
        var root = AppContext.BaseDirectory;
        var searchPaths = new[]
        {
            Path.Combine(root, "..", "..", "..", "images", "BACKGROUND_MAIN.bmp"),
            Path.Combine(root, "images", "BACKGROUND_MAIN.bmp"),
        };

        foreach (var path in searchPaths)
        {
            if (File.Exists(path))
            {
                options.SetSplashBackgroundFromFile(path);
                break;
            }
        }
    }
}
#endif
