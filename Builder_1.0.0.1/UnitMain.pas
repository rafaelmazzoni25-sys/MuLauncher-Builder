unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtDlgs, JclSysUtils, JclFileUtils,
  DIMimeStreams, ExtCtrls, ZLibEx, ComCtrls, UnitTools;

type
  TfrmMain = class(TForm)
    OpenPictureDialog: TOpenPictureDialog;
    btnBuild: TBitBtn;
    btnClose: TBitBtn;
    btnAbout: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsSkin: TTabSheet;
    cbEnableBrowser: TCheckBox;
    cbEnableOptions: TCheckBox;
    cbEnableUpdate: TCheckBox;
    cbShowSplash: TCheckBox;
    Label3: TLabel;
    eServerName: TEdit;
    Label4: TLabel;
    eServerHostname: TEdit;
    Label1: TLabel;
    eServerPage: TEdit;
    Label5: TLabel;
    eServerPort: TEdit;
    gbSplashScreen: TGroupBox;
    eSplashScreenImage: TEdit;
    lblShowSplash: TLabel;
    btnBrowseSplashImage: TSpeedButton;
    gbShowUpdate: TGroupBox;
    btnCreateUpdatePackage: TSpeedButton;
    eUpdateURL: TEdit;
    lblUpdateURL: TLabel;
    gbShowBrowser: TGroupBox;
    lblBrowserURL: TLabel;
    eBrowserURL: TEdit;
    cbShowStatus: TCheckBox;
    eSplashScreenRegion: TEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    procedure cbEnableBrowserClick(Sender: TObject);
    procedure cbEnableUpdateClick(Sender: TObject);
    procedure cbShowSplashClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnBuildClick(Sender: TObject);
    procedure btnCreateUpdatePackageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBrowseSplashImageClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
  private
    SkinFrame: TFrame;
  public
    Opt1, Opt2, Opt3, Opt4, Opt5, Opt6, Opt7, Opt8, Opt9: String;
    Options: TOptionsData;
    Skin: TSkin;    
  end;

var
  frmMain: TfrmMain;

implementation

uses UnitUpdateBuilder, UnitSkinBuilder;

{$R *.dfm}

procedure TfrmMain.cbEnableBrowserClick(Sender: TObject);
begin
 if cbEnableBrowser.Checked then begin
   gbShowBrowser.Enabled := True;
 end else begin
   gbShowBrowser.Enabled := False;
   Options.BrowseURL:= '';
 end;
end;

procedure TfrmMain.cbEnableUpdateClick(Sender: TObject);
begin
 if cbEnableUpdate.Checked then begin
   gbShowUpdate.Enabled := True;
 end else begin
   gbShowUpdate.Enabled := False;
   Options.UpdateData:= '';
 end;
end;

procedure TfrmMain.cbShowSplashClick(Sender: TObject);
begin
 if cbShowSplash.Checked then begin
   gbSplashScreen.Enabled := True;
 end else begin
   gbSplashScreen.Enabled := False;
   Options.SplashData:= '';
 end;
end;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.btnBuildClick(Sender: TObject);
var
   LauncherDataEnc: TStream;
   LauncherDataDec: TMemoryStream;
   OptionData, OptionDataS: TStream;

   FileOut: TStream;
   OptionString: String;
begin
  Options.ShowBrowse := cbEnableBrowser.Checked;
  if Options.ShowBrowse then Options.BrowseURL := eBrowserURL.Text;
  Options.ShowOption := cbEnableOptions.Checked;
  Options.ShowUpdate := cbEnableUpdate.Checked;
  if Options.ShowUpdate then Options.UpdateData := eUpdateURL.Text;
  Options.ShowSplash := cbShowSplash.Checked;
  if Options.ShowSplash then begin
    Options.SplashData := CreateImageData( eSplashScreenImage.Text );
    if eSplashScreenRegion.Text='' then Options.SplashReg:= 'EMPTY' else
       Options.SplashReg := CreateImageData( eSplashScreenRegion.Text );
  end;

  Options.ShowStatus := cbShowStatus.Checked;

  Options.ServerName:= eServerName.Text;
  Options.ServerIP  := eServerHostname.Text;
  Options.ServerPort:= eServerPort.Text;
  Options.ServerPage:= eServerPage.Text;

  Opt8:= TFrameSkinBuilder(SkinFrame).BuildSkin; {Get skin data first}

  Opt1:= Option1;
  Opt2:= Format(Option2, [BoolToInt(Options.ShowBrowse),BoolToInt(Options.ShowOption),BoolToInt(Options.ShowUpdate),BoolToInt(Options.ShowSplash), BoolToInt(Options.ShowStatus) ]);
  Opt3:= Format(Option3, [Options.BrowseURL, Skin.Browser.Left,Skin.Browser.Width,Skin.Browser.Top,Skin.Browser.Height, Skin.ServerStatus.Left,Skin.ServerStatus.Width,Skin.ServerStatus.Top,Skin.ServerStatus.Height]);
  Opt4:= Format(Option4, [Options.SplashData, Options.SplashReg]);
  Opt5:= Format(Option5, [eServerName.Text,eServerHostname.Text,eServerPort.Text,eServerPage.Text]);
  Opt6:= Format(Option6, [Options.UpdateData]);
  Opt7:= Format(Option7, [Options.MColor, Options.MFontColor, Options.OColor, Options.OFontColor]);
  Opt9:= Option9;

  OptionString:= Format('%s%s%s%s%s%s%s%s%s', [Opt1, Opt2, Opt3, Opt4, Opt5, Opt6, Opt7, Opt8, Opt9]);

  OptionData:= TMemoryStream.Create;
  OptionDataS:= TStringStream.Create( OptionString );
  
  LauncherDataEnc:= TResourceStream.Create(hInstance, 'LAUNCHER', Pchar('DATA'));
  LauncherDataDec:= TMemoryStream.Create;
  FileOut:= TFileStream.Create(ExtractFilePath(Application.ExeName) + 'Launcher.exe', fmCreate);
  try
    LauncherDataEnc.Position := 0;
    LauncherDataDec.Position :=0;
    LauncherDataDec.CopyFrom(LauncherDataEnc, LauncherDataEnc.Size);
    
    {Decrypt Launcher}
    EncryptDecrypt2(LauncherDataDec);
    {Unpack Launcher}
    UnpackData(LauncherDataDec);
        
    OptionData.Position := 0;
    OptionDataS.Position:= 0;
    OptionData.CopyFrom(OptionDataS, OptionDataS.Size);
    
    {Pack Options}
    PackData(OptionData);
    {Encrypt Options}
    EncryptDecrypt2(OptionData);


    FileOut.Position        := 0;
    LauncherDataDec.Position:= 0;
    OptionData.Position   := 0;
    {Copy Launcher+Options to Launcher.exe}
    FileOut.CopyFrom(LauncherDataDec, LauncherDataDec.Size);
    FileOut.CopyFrom(OptionData, OptionData.Size);
  finally
    LauncherDataEnc.Free;
    LauncherDataDec.Free;
    OptionData.Free;
    OptionDataS.Free;
    FileOut.Free;
  end;

  Application.MessageBox('Create of Launcher finished. You can now release the file Launcher.exe', 'Finished', MB_ICONINFORMATION+MB_OK);

end;

procedure TfrmMain.btnCreateUpdatePackageClick(Sender: TObject);
var frmUpdateBuilder: TfrmUpdateBuilder;
begin
  frmUpdateBuilder:= TfrmUpdateBuilder.Create(Self); 
  frmUpdateBuilder.ShowModal;
  frmUpdateBuilder.Free;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  SkinFrame:= TFrameSkinBuilder.Create(Self);
  SkinFrame.Parent:= tsSkin;
  SkinFrame.Align := alClient;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SkinFrame.Free;
end;

procedure TfrmMain.btnBrowseSplashImageClick(Sender: TObject);
begin
  FindImageFile(eSplashScreenImage);
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  FindImageFile(eSplashScreenRegion);
end;

procedure TfrmMain.btnAboutClick(Sender: TObject);
var VersionInfo: TJclFileVersionInfo;
begin
  VersionInfo:= TJclFileVersionInfo.Create( Application.ExeName );
  try
    Application.MessageBox( PChar(Format( 'MU Launcher Builder %s', [VersionInfo.FileVersion] ) + #13#10#13#10 +
                         'Visit http://sky.xn.pl/ for info and support' + #13#10 +
                         'Copyright 2004-2005 BlurCode - SkyTeam'), 'About...', MB_ICONINFORMATION+MB_OK);
  finally
   VersionInfo.Free;
  end;                         
end;

end.                              
