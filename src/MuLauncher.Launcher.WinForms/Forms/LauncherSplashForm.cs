#if WINDOWS
using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using MuLauncher.Shared.UI.Models;
using MuLauncher.Shared.UI.Rendering;
using SixLabors.ImageSharp.PixelFormats;
using SixLabors.ImageSharp.Formats.Png;

namespace MuLauncher.Launcher.WinForms.Forms;

public sealed class LauncherSplashForm : Form
{
    private LauncherOptions _options;
    private readonly Timer _closeTimer;

    private Bitmap? _background;
    private Region? _shapeRegion;
    private bool _isDragging;
    private Point _dragOffset;

    public LauncherSplashForm(LauncherOptions options)
    {
        _options = options.Clone();

        FormBorderStyle = FormBorderStyle.None;
        StartPosition = FormStartPosition.CenterScreen;
        DoubleBuffered = true;
        ShowInTaskbar = false;
        TopMost = true;

        _closeTimer = new Timer
        {
            Interval = (int)TimeSpan.FromSeconds(3).TotalMilliseconds
        };
        _closeTimer.Tick += (_, _) => Close();

        LoadBackground();
    }

    public TimeSpan AutoCloseDelay
    {
        get => TimeSpan.FromMilliseconds(_closeTimer.Interval);
        set => _closeTimer.Interval = Math.Max(0, (int)value.TotalMilliseconds);
    }

    public void UpdateOptions(LauncherOptions options)
    {
        _options = options.Clone();
        LoadBackground();
    }

    public void ActivateAutoClose()
    {
        if (_closeTimer.Interval > 0)
        {
            _closeTimer.Start();
        }
    }

    protected override void OnShown(EventArgs e)
    {
        base.OnShown(e);
        ActivateAutoClose();
    }

    protected override void OnPaint(PaintEventArgs e)
    {
        base.OnPaint(e);

        if (_background is not null)
        {
            e.Graphics.DrawImage(_background, Point.Empty);
        }
    }

    protected override void OnMouseDown(MouseEventArgs e)
    {
        base.OnMouseDown(e);
        if (e.Button == MouseButtons.Left)
        {
            _isDragging = true;
            _dragOffset = new Point(e.X, e.Y);
        }
    }

    protected override void OnMouseMove(MouseEventArgs e)
    {
        base.OnMouseMove(e);
        if (_isDragging)
        {
            var screenPosition = PointToScreen(new Point(e.X, e.Y));
            Location = new Point(screenPosition.X - _dragOffset.X, screenPosition.Y - _dragOffset.Y);
        }
    }

    protected override void OnMouseUp(MouseEventArgs e)
    {
        base.OnMouseUp(e);
        if (e.Button == MouseButtons.Left)
        {
            _isDragging = false;
        }
    }

    protected override void Dispose(bool disposing)
    {
        if (disposing)
        {
            _closeTimer.Dispose();
            _background?.Dispose();
            _shapeRegion?.Dispose();
        }

        base.Dispose(disposing);
    }

    private void LoadBackground()
    {
        _background?.Dispose();
        _shapeRegion?.Dispose();

        using var splashImage = LauncherSplashRenderer.Render(_options);
        _background = ConvertToBitmap(splashImage);
        _shapeRegion = CreateRegionFromImage(splashImage);

        ClientSize = _background.Size;
        Region = _shapeRegion;
        Invalidate();
    }

    private static Bitmap ConvertToBitmap(SixLabors.ImageSharp.Image<Rgba32> image)
    {
        using var memory = new System.IO.MemoryStream();
        image.Save(memory, new PngEncoder());
        memory.Position = 0;
        return new Bitmap(memory);
    }

    private static Region? CreateRegionFromImage(SixLabors.ImageSharp.Image<Rgba32> image)
    {
        var path = new GraphicsPath();

        for (var y = 0; y < image.Height; y++)
        {
            var span = image.Frames.RootFrame.GetPixelRowSpan(y);
            var start = -1;
            for (var x = 0; x < span.Length; x++)
            {
                var opaque = span[x].A > 10;
                if (opaque)
                {
                    start = start == -1 ? x : start;
                }
                else if (start != -1)
                {
                    path.AddRectangle(new Rectangle(start, y, x - start, 1));
                    start = -1;
                }
            }

            if (start != -1)
            {
                path.AddRectangle(new Rectangle(start, y, span.Length - start, 1));
            }
        }

        return path.PointCount > 0 ? new Region(path) : null;
    }
}
#endif
