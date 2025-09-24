#if WINDOWS
using System;
using System.ComponentModel;
using System.Windows.Forms;
using MuLauncher.Shared.UI.Models;

namespace MuLauncher.Shared.UI.Controls;

public sealed class LauncherOptionsPropertyPanel : UserControl
{
    private readonly PropertyGrid _propertyGrid;
    private readonly ToolStrip _toolStrip;
    private readonly ToolStripButton _loadBackgroundButton;
    private readonly ToolStripButton _loadRegionButton;
    private readonly ToolStripButton _clearRegionButton;

    private LauncherOptions? _options;
    private LauncherOptionsDescriptor? _descriptor;

    public LauncherOptionsPropertyPanel()
    {
        _propertyGrid = new PropertyGrid
        {
            Dock = DockStyle.Fill,
            ToolbarVisible = false,
            PropertySort = PropertySort.Categorized
        };

        _toolStrip = new ToolStrip
        {
            GripStyle = ToolStripGripStyle.Hidden,
            Dock = DockStyle.Top
        };

        _loadBackgroundButton = new ToolStripButton("Load background")
        {
            DisplayStyle = ToolStripItemDisplayStyle.Text
        };
        _loadBackgroundButton.Click += (_, _) => LoadBackgroundFromFile();

        _loadRegionButton = new ToolStripButton("Load region mask")
        {
            DisplayStyle = ToolStripItemDisplayStyle.Text
        };
        _loadRegionButton.Click += (_, _) => LoadRegionFromFile();

        _clearRegionButton = new ToolStripButton("Clear region")
        {
            DisplayStyle = ToolStripItemDisplayStyle.Text
        };
        _clearRegionButton.Click += (_, _) => ClearRegion();

        _toolStrip.Items.AddRange(new ToolStripItem[]
        {
            _loadBackgroundButton,
            _loadRegionButton,
            _clearRegionButton
        });

        Controls.Add(_propertyGrid);
        Controls.Add(_toolStrip);

        _propertyGrid.PropertyValueChanged += (_, _) => OnOptionsChanged();
    }

    public event EventHandler? OptionsChanged;

    public LauncherOptions? Options => _options;

    public void Bind(LauncherOptions options)
    {
        ArgumentNullException.ThrowIfNull(options);

        _options = options;
        _descriptor = new LauncherOptionsDescriptor(options, OnOptionsChanged);
        _propertyGrid.SelectedObject = _descriptor;
        OnOptionsChanged();
    }

    public LauncherOptions Collect()
    {
        if (_options is null)
        {
            throw new InvalidOperationException("The panel is not bound to options.");
        }

        return _options.Clone();
    }

    private void LoadBackgroundFromFile()
    {
        if (_options is null)
        {
            return;
        }

        using var dialog = new OpenFileDialog
        {
            Filter = "Bitmap files (*.bmp;*.png;*.jpg)|*.bmp;*.png;*.jpg|All files (*.*)|*.*",
            Title = "Select splash background"
        };

        if (dialog.ShowDialog(this) == DialogResult.OK)
        {
            _options.SetSplashBackgroundFromFile(dialog.FileName);
            RefreshBindings();
            OnOptionsChanged();
        }
    }

    private void LoadRegionFromFile()
    {
        if (_options is null)
        {
            return;
        }

        using var dialog = new OpenFileDialog
        {
            Filter = "Bitmap files (*.bmp;*.png)|*.bmp;*.png|All files (*.*)|*.*",
            Title = "Select region mask"
        };

        if (dialog.ShowDialog(this) == DialogResult.OK)
        {
            _options.SetSplashRegionFromFile(dialog.FileName);
            RefreshBindings();
            OnOptionsChanged();
        }
    }

    private void ClearRegion()
    {
        if (_options is null)
        {
            return;
        }

        if (!string.IsNullOrEmpty(_options.SplashRegionData))
        {
            _options.SplashRegionData = string.Empty;
            RefreshBindings();
            OnOptionsChanged();
        }
    }

    private void RefreshBindings()
    {
        if (_descriptor is not null)
        {
            _propertyGrid.SelectedObject = null;
            _propertyGrid.SelectedObject = _descriptor;
        }
    }

    private void OnOptionsChanged()
    {
        OptionsChanged?.Invoke(this, EventArgs.Empty);
    }

    private sealed class LauncherOptionsDescriptor
    {
        private readonly LauncherOptions _options;
        private readonly Action _onChanged;

        public LauncherOptionsDescriptor(LauncherOptions options, Action onChanged)
        {
            _options = options;
            _onChanged = onChanged;
        }

        [Category("Visibility")]
        [DisplayName("Show browse panel")]
        public bool ShowBrowse
        {
            get => _options.ShowBrowse;
            set
            {
                if (_options.ShowBrowse != value)
                {
                    _options.ShowBrowse = value;
                    _onChanged();
                }
            }
        }

        [Category("Visibility")]
        [DisplayName("Show options button")]
        public bool ShowOption
        {
            get => _options.ShowOption;
            set
            {
                if (_options.ShowOption != value)
                {
                    _options.ShowOption = value;
                    _onChanged();
                }
            }
        }

        [Category("Visibility")]
        [DisplayName("Show update button")]
        public bool ShowUpdate
        {
            get => _options.ShowUpdate;
            set
            {
                if (_options.ShowUpdate != value)
                {
                    _options.ShowUpdate = value;
                    _onChanged();
                }
            }
        }

        [Category("Visibility")]
        [DisplayName("Show splash screen")]
        public bool ShowSplash
        {
            get => _options.ShowSplash;
            set
            {
                if (_options.ShowSplash != value)
                {
                    _options.ShowSplash = value;
                    _onChanged();
                }
            }
        }

        [Category("Visibility")]
        [DisplayName("Show status label")]
        public bool ShowStatus
        {
            get => _options.ShowStatus;
            set
            {
                if (_options.ShowStatus != value)
                {
                    _options.ShowStatus = value;
                    _onChanged();
                }
            }
        }

        [Category("Navigation")]
        [DisplayName("Browse URL")]
        public string BrowseUrl
        {
            get => _options.BrowseUrl;
            set
            {
                if (_options.BrowseUrl != value)
                {
                    _options.BrowseUrl = value;
                    _onChanged();
                }
            }
        }

        [Category("Server")]
        [DisplayName("Server name")]
        public string ServerName
        {
            get => _options.ServerName;
            set
            {
                if (_options.ServerName != value)
                {
                    _options.ServerName = value;
                    _onChanged();
                }
            }
        }

        [Category("Server")]
        [DisplayName("Server address")]
        public string ServerAddress
        {
            get => _options.ServerAddress;
            set
            {
                if (_options.ServerAddress != value)
                {
                    _options.ServerAddress = value;
                    _onChanged();
                }
            }
        }

        [Category("Splash")]
        [DisplayName("Background asset")]
        [ReadOnly(true)]
        public string SplashBackgroundSummary => DescribeAsset(_options.SplashBackgroundData);

        [Category("Splash")]
        [DisplayName("Region asset")]
        [ReadOnly(true)]
        public string SplashRegionSummary => DescribeAsset(_options.SplashRegionData);

        private static string DescribeAsset(string base64)
        {
            if (string.IsNullOrWhiteSpace(base64))
            {
                return "(not loaded)";
            }

            var bytes = (base64.Length * 3) / 4;
            return $"{bytes} bytes";
        }
    }
}
#endif
