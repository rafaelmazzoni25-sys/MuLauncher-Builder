#if WINDOWS
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace MuLauncher.Shared.UI.Controls;

public sealed class SkinButton : Button
{
    private Image? _normalImage;
    private Image? _hoverImage;
    private Image? _pressedImage;
    private Image? _disabledImage;

    public SkinButton()
    {
        FlatStyle = FlatStyle.Flat;
        FlatAppearance.BorderSize = 0;
        BackColor = Color.Transparent;
        UseVisualStyleBackColor = false;
    }

    [Category("Skin")]
    public Image? NormalImage
    {
        get => _normalImage;
        set
        {
            _normalImage = value;
            if (Enabled)
            {
                BackgroundImage = _normalImage;
            }
        }
    }

    [Category("Skin")]
    public Image? HoverImage
    {
        get => _hoverImage;
        set => _hoverImage = value;
    }

    [Category("Skin")]
    public Image? PressedImage
    {
        get => _pressedImage;
        set => _pressedImage = value;
    }

    [Category("Skin")]
    public Image? DisabledImage
    {
        get => _disabledImage;
        set
        {
            _disabledImage = value;
            if (!Enabled)
            {
                BackgroundImage = _disabledImage;
            }
        }
    }

    [Category("Skin")]
    public string ActionKey { get; set; } = string.Empty;

    public event EventHandler<SkinActionEventArgs>? SkinActionInvoked;

    protected override void OnClick(EventArgs e)
    {
        base.OnClick(e);
        SkinActionInvoked?.Invoke(this, new SkinActionEventArgs(ActionKey));
    }

    protected override void OnEnabledChanged(EventArgs e)
    {
        base.OnEnabledChanged(e);
        BackgroundImage = Enabled ? (_normalImage ?? BackgroundImage) : (_disabledImage ?? BackgroundImage);
    }

    protected override void OnMouseEnter(EventArgs e)
    {
        base.OnMouseEnter(e);
        if (Enabled && _hoverImage is not null)
        {
            BackgroundImage = _hoverImage;
        }
    }

    protected override void OnMouseLeave(EventArgs e)
    {
        base.OnMouseLeave(e);
        if (Enabled)
        {
            BackgroundImage = _normalImage ?? BackgroundImage;
        }
    }

    protected override void OnMouseDown(MouseEventArgs mevent)
    {
        base.OnMouseDown(mevent);
        if (Enabled && _pressedImage is not null)
        {
            BackgroundImage = _pressedImage;
        }
    }

    protected override void OnMouseUp(MouseEventArgs mevent)
    {
        base.OnMouseUp(mevent);
        if (Enabled)
        {
            BackgroundImage = ClientRectangle.Contains(PointToClient(Cursor.Position)) && _hoverImage is not null
                ? _hoverImage
                : _normalImage ?? BackgroundImage;
        }
    }
}

public sealed class SkinActionEventArgs : EventArgs
{
    public SkinActionEventArgs(string actionKey)
    {
        ActionKey = actionKey;
    }

    public string ActionKey { get; }
}
#endif
