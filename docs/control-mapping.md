# Mapeamento de controles Delphi para C# (WinForms)

Este documento resume os principais componentes visuais e não visuais usados no projeto e sugere equivalentes no ecossistema WinForms. Use-o como guia inicial ao migrar as telas e lógicas do Builder e do Launcher.

## Contêineres e navegação

| Componente Delphi | Onde aparece | Sugestão em C# | Observações |
| --- | --- | --- | --- |
| `TForm`/`TFrame` | Formulários principais como `TfrmMain`, `TfrmSkinEditor`, `TfrmLauncherMain`, `TfrmLauncherUpdate` e o frame `TFrameSkinBuilder`.【F:Builder/UnitMain.dfm†L1-L19】【F:Builder/UnitSkinEditor.dfm†L1-L55】【F:Launcher/UnitLauncherMain.dfm†L1-L40】【F:Launcher/UnitLauncherUpdate.dfm†L1-L67】【F:Builder/UnitSkinBuilder.dfm†L1-L145】 | `Form` / `UserControl` | Herde de `Form` para janelas e de `UserControl` para componentes reutilizáveis. |
| `TPageControl` | Página principal do Builder com abas de configuração.【F:Builder/UnitMain.dfm†L20-L48】 | `TabControl` | Ajuste `Dock` para `Fill` e crie `TabPage` para cada aba. |
| `TRzPageControl`/`TRzTabSheet` | Editor de skins com abas para janelas e painéis.【F:Builder/UnitSkinEditor.dfm†L16-L55】 | `TabControl` + `TabPage` | Troque propriedades específicas da Raize (cores, HotTrack) por configurações padrão ou extensões personalizadas. |
| `TRzPanel` | Painel com grade no editor de skins.【F:Builder/UnitSkinEditor.dfm†L35-L49】 | `Panel` com desenho customizado | Para linhas de grade, implemente `OnPaint` do painel ou sobreponha um controle customizado. |
| `TGroupBox` | Agrupadores no construtor de skins (opções e janela principal).【F:Builder/UnitSkinBuilder.dfm†L7-L145】 | `GroupBox` | Combine com `TableLayoutPanel` ou `Panel` para organizar campos. |

## Controles de entrada e exibição

| Componente Delphi | Onde aparece | Sugestão em C# | Observações |
| --- | --- | --- | --- |
| `TLabel` | Amplamente usado para descritivos no Builder e Launcher.【F:Builder/UnitSkinBuilder.dfm†L15-L31】【F:Launcher/UnitLauncherOptions.dfm†L23-L49】 | `Label` | Defina `AutoSize` e `TextAlign` conforme necessário. |
| `TEdit` | Campos numéricos e de texto, por exemplo coordenadas e ID de conta.【F:Builder/UnitSkinBuilder.dfm†L866-L872】【F:Launcher/UnitLauncherOptions.dfm†L50-L61】 | `TextBox` | Para números, considere `NumericUpDown` ou validação manual. |
| `TComboBoxItem`/`TSpinItem` em `TPropertiesView` | Itens da grade de propriedades do Builder.【F:Builder/UnitMain.dfm†L31-L159】 | `PropertyGrid` + `TypeConverter` ou controles dedicados | WinForms não possui equivalente direto ao `TPropertiesView`; modele classes de dados e utilize `PropertyGrid` ou formulários auxiliares. |
| `TRzRadioButton` | Seleção de resolução nas opções do launcher.【F:Launcher/UnitLauncherOptions.dfm†L63-L100】 | `RadioButton` | Agrupe em `GroupBox` ou use painel comum para manter exclusividade. |
| `TRzCheckBox` / `TCheckBox` | Alternância de opções (sons/música, uso de skin).【F:Launcher/UnitLauncherOptions.dfm†L101-L119】【F:Builder/UnitSkinBuilder.dfm†L1877-L1891】 | `CheckBox` | Ajuste `FlatStyle` para aparência semelhante. |
| `TSpeedButton` | Botões com ícones para carregar bitmaps, procurar pastas etc.【F:Builder/UnitSkinBuilder.dfm†L28-L145】【F:Builder/UnitUpdateBuilder.dfm†L33-L94】 | `Button` (`FlatStyle = Flat`) ou `ToolStripButton` | Use `ImageList`/`Image` para ícones e vincule a eventos `Click`. |
| `TButton` | Ações como “Preview”, “Create”, “Update”.【F:Builder/UnitSkinBuilder.dfm†L1892-L1899】【F:Builder/UnitUpdateBuilder.dfm†L116-L133】【F:Launcher/UnitLauncherUpdate.dfm†L59-L76】 | `Button` | Combine com eventos `Click`. |
| `TColorBox` | Escolha de cores para texto e fundo das janelas.【F:Builder/UnitSkinBuilder.dfm†L873-L893】 | `ComboBox` preenchido com cores + `ColorDialog` | Implemente lista personalizada de cores ou use controles de terceiros. |
| `TImage` | Pré-visualização de skins com bitmaps.【F:Builder/UnitSkinEditor.dfm†L51-L56】 | `PictureBox` | Configure `SizeMode` para controlar o ajuste da imagem. |
| `TListBox` | Log textual durante atualização do launcher.【F:Launcher/UnitLauncherUpdate.dfm†L40-L47】 | `ListBox` ou `ListView` | Para maior controle, considere `ListView` em modo detalhes. |

## Barras, menus e status

| Componente Delphi | Onde aparece | Sugestão em C# | Observações |
| --- | --- | --- | --- |
| `TToolBar`/`TMainMenu`/`TPopupMenu` | Menu e barra do Builder (ver `UnitMain.dfm`).【F:Builder/UnitMain.dfm†L2450-L2504】【F:Builder/UnitMain.dfm†L2486-L2521】【F:Builder/UnitMain.dfm†L2692-L2704】 | `ToolStrip`, `MenuStrip`, `ContextMenuStrip` | Vincule itens a `Command`/eventos equivalentes aos `TAction`. |
| `TStatusBar` | Status na janela de atualização.【F:Launcher/UnitLauncherUpdate.dfm†L48-L57】 | `StatusStrip` | Adicione `ToolStripStatusLabel` para painéis. |
| `TProgressBar` | Indica progresso no builder e updater.【F:Builder/UnitUpdateBuilder.dfm†L134-L143】【F:Launcher/UnitLauncherUpdate.dfm†L20-L38】 | `ProgressBar` | Utilize `Style = ProgressBarStyle.Continuous` para aparência similar ao `Smooth = True`. |
| `TImageList` | Armazena ícones para botões/menus no Builder.【F:Builder/UnitMain.dfm†L2549-L2567】 | `ImageList` | Atribua ao `ToolStrip`/botões conforme necessário. |

## Componentes de dados e infraestrutura

| Componente Delphi | Onde aparece | Sugestão em C# | Observações |
| --- | --- | --- | --- |
| `TActionList` / `TAction` | Define comandos como Build, Exit, About no Builder.【F:Builder/UnitMain.dfm†L2523-L2548】 | Eventos diretos ou padrão `ICommand` (WPF) | Em WinForms, conecte botões diretamente aos métodos ou crie uma camada de comandos personalizada. |
| `TJvSimpleXML` | Leitura de opções no launcher.【F:Launcher/UnitLauncherMain.dfm†L41-L45】 | `System.Xml` (`XmlDocument`, `XDocument`) | Substitua parsing por APIs .NET modernas. |
| `TXPManifestFile` | Aplicado ao estilo do aplicativo.【F:Launcher/UnitLauncherMain.dfm†L46-L49】 | Manifesto embutido ou `Application.EnableVisualStyles()` | Configure via manifesto ou chamada no `Program.cs`. |
| `TTimer` | Atualização de status e splash timeout.【F:Launcher/UnitLauncherMain.dfm†L50-L55】【F:Launcher/UnitLauncherSplash.dfm†L21-L27】 | `System.Windows.Forms.Timer` | Use `Tick` para lógica periódica; para alta precisão, considere `System.Timers.Timer`. |
| `TsiBrowseForFolder` | Diálogo de pasta no Builder.【F:Builder/UnitUpdateBuilder.dfm†L144-L150】 | `FolderBrowserDialog` | Configure `ShowNewFolderButton` e caminho inicial conforme necessidade. |
| `TIdHTTP` / `TIdCookieManager` | Download de atualizações no launcher.【F:Launcher/UnitLauncherUpdate.dfm†L77-L103】 | `HttpClient` + `CookieContainer` | Use operações assíncronas (`HttpClient.SendAsync`) e relate progresso manualmente. |

## Considerações para janelas sem borda e desenho customizado

- Formulários como o launcher principal, opções e splash removem a borda e usam eventos de mouse para arrastar a janela e eventos de pintura para desenhar a skin.【F:Launcher/UnitLauncherMain.dfm†L1-L20】【F:Launcher/UnitLauncherOptions.dfm†L1-L22】【F:Launcher/UnitLauncherSplash.dfm†L1-L19】 
- Em WinForms, defina `FormBorderStyle = FormBorderStyle.None`, lide com arrasto via chamadas a `ReleaseCapture`/`SendMessage` ou manipulando `MouseDown/MouseMove`, e reimplemente a pintura em `OnPaint` usando GDI+ (`Graphics`).

## Catálogo de propriedades e eventos definidos em código

### Builder

#### `TfrmMain` (`UnitMain.pas`)

| Controle | Ajustes em código | Eventos/manipuladores | Observações |
| --- | --- | --- | --- |
| `TFrameSkinBuilder` (instanciado em `SkinFrame`) | Criado no `FormCreate` para alimentar a aba de skin; comentários indicam que pode ser hospedado no `TabSheet` de skin.【F:Builder/UnitMain.pas†L104-L123】 | Liberado em `FormClose`.【F:Builder/UnitMain.pas†L125-L128】 | O frame encapsula toda a coleta de dados de skin via `BuildSkin`. |
| `TPropertiesView GeneralProperties` | Leitura das propriedades via `FindItem(...).Value` para preencher a estrutura `Options` antes da compilação.【F:Builder/UnitMain.pas†L159-L193】 | Usado indiretamente por `ActionBuildExecute`. | Cada item do grid mapeia diretamente para opções do launcher. |
| `ActionList1` / `TAction` (`ActionBuild`, `ActionExit`, `ActionAbout`, `ActionRun`, `ActionEditMainWindowSkin`, `ActionEditOptionsWindowSkin`) | Sem propriedades adicionais além das definidas no DFM. | `ActionExitExecute` fecha a janela.【F:Builder/UnitMain.pas†L130-L133】<br>`ActionAboutExecute` mostra caixa de diálogo com versão usando `TJclFileVersionInfo`.【F:Builder/UnitMain.pas†L135-L146】<br>`ActionBuildExecute` empacota o launcher lendo `GeneralProperties`, chamando `BuildSkin` e escrevendo os arquivos resultantes.【F:Builder/UnitMain.pas†L148-L259】<br>`ActionEditMainWindowSkinExecute` abre o editor visual de skins e é reaproveitado no `ToolButton1`.【F:Builder/UnitMain.pas†L262-L270】 | Ao migrar para C#, conecte cada ação ao handler correspondente (eventos `Click`/`Execute`). |
| `ToolButton1` | Sem ajustes adicionais. | Reutiliza `ActionEditMainWindowSkinExecute` para abrir `frmSkinEditor`.【F:Builder/UnitMain.pas†L262-L270】 | Em WinForms, basta ligar o botão a `FrmSkinEditor.ShowDialog()`. |

#### `TFrameSkinBuilder` (`UnitSkinBuilder.pas`)

| Controle | Ajustes em código | Eventos/manipuladores | Observações |
| --- | --- | --- | --- |
| `cbUseSkin` | Habilita/desabilita os `GroupBox` de configuração das janelas principal e de opções.【F:Builder/UnitSkinBuilder.pas†L555-L563】 | `cbUseSkinClick` alterna `Enabled` nos grupos de configuração.【F:Builder/UnitSkinBuilder.pas†L555-L565】 | Use um `CheckBox.CheckedChanged` para replicar a lógica. |
| `Preview` (`TButton`) | Nenhum comportamento adicional no `.pas`. | _Sem handler definido no código._ | O comportamento precisa ser definido na migração. |
| `TSpeedButton` para seleção de imagens (`sbMainBackground`, `sbMainRegion`, `sbOptionsBackground`, `sbOptionsRegion`, `sbCloseN`, `sbCloseD`, `sbConnectN`, `sbConnectD`, `sbUpdateN`, `sbUpdateD`, `sbOptionsN`, `sbOptionsD`, `sbCloseN2`, `sbCloseD2`, `sbApplyN`, `sbApplyD`) | Cada handler chama `FindImageFile` apontando para o `TEdit` associado para popular o caminho/arquivo codificado da textura ou glyph.【F:Builder/UnitSkinBuilder.pas†L475-L553】 | Eventos `OnClick` individuais delegam para `FindImageFile`. | Em WinForms, abra um `OpenFileDialog` e preencha os `TextBox` equivalentes. |
| `gbMainWindow`, `gbOptionsWindow`, campos `TEdit`/`TColorBox` | Valores lidos em `BuildSkin` para preencher `TSkin` e cores das janelas; quando a skin é desabilitada, são restaurados padrões internos.【F:Builder/UnitSkinBuilder.pas†L294-L469】 | Não possuem eventos próprios; os valores são coletados quando `BuildSkin` é invocado. | Converta os dados para classes de modelo e serialize conforme o formato esperado pelo launcher. |
| Método `BuildSkin` | Constrói a string XML (`Option8`) com todos os dados visuais, aplicando `CreateImageData` e copiando posições/tamanhos dos campos de texto e caixas de cor.【F:Builder/UnitSkinBuilder.pas†L294-L473】 | Invocado por `TfrmMain.ActionBuildExecute`. | Ao migrar, replique a montagem do objeto/serialização antes de gerar o launcher. |

#### `TfrmUpdateBuilder` (`UnitUpdateBuilder.pas`)

| Controle | Ajustes em código | Eventos/manipuladores | Observações |
| --- | --- | --- | --- |
| `btnCreate` | Desabilitado enquanto a geração do pacote está em andamento; reabilitação implícita ao término.| `btnCreateClick` monta a lista de arquivos, gera os pacotes `.pak`, comprime e criptografa `update.cfg`, atualizando progresso e rótulo de status durante o loop.【F:Builder/UnitUpdateBuilder.pas†L132-L205】 | Em C#, implemente processamento assíncrono ou feedback na UI para evitar congelamento. |
| `btnClose` | Nenhum ajuste. | Fecha o formulário no `OnClick`.【F:Builder/UnitUpdateBuilder.pas†L127-L130】 | | 
| `btnSearchDirIn`, `btnSearchDirOut` (`TSpeedButton`) | Preenchem os `TEdit` com o diretório escolhido via `TsiBrowseForFolder`.【F:Builder/UnitUpdateBuilder.pas†L207-L219】 | `OnClick` compartilha o diálogo de seleção de pasta. | Troque por `FolderBrowserDialog` ou `VistaFolderBrowserDialog`. |
| `pbPackProgress`, `lblProgress` | Atualizados dentro do laço de empacotamento para refletir item atual e progresso total.【F:Builder/UnitUpdateBuilder.pas†L166-L175】 | Sem handlers próprios. | Use `ProgressBar.Value` e `Label.Text` em WinForms. |
| Método `PackFile` | Codifica em MIME, garante diretórios, comprime com `ZCompressStream`.【F:Builder/UnitUpdateBuilder.pas†L70-L123】 | Chamado por `btnCreateClick`. | Reimplemente com `GZipStream`/`DeflateStream` e conversão Base64. |

### Launcher

#### `TfrmLauncherMain` (`UnitLauncherMain.pas`)

| Controle | Ajustes em código | Eventos/manipuladores | Observações |
| --- | --- | --- | --- |
| `OptionsData` (`TJvSimpleXML`) | Carregado de dentro do executável via `FormCreate` para alimentar as opções.【F:Launcher/UnitLauncherMain.pas†L236-L285】 | Não possui eventos próprios. | Substitua por `XmlDocument`/`XDocument`. |
| `TWebBrowser` (instanciado em tempo de execução) | Criado dinamicamente se `ShowBrowse` estiver habilitado; posicionamento conforme `Skin.Browser` e navegação para `Options.BrowseURL`.【F:Launcher/UnitLauncherMain.pas†L295-L304】 | Liberado em `FormClose`.【F:Launcher/UnitLauncherMain.pas†L373-L388】 | Em WinForms, use `WebBrowser` ou `WebView2`. |
| `TRzBmpButton` (`btnClose`, `btnConnect`, `btnUpdate`, `btnOption`) | Criados dinamicamente no `FormCreate`, com `Parent`, `Left`, `Top` e bitmaps carregados de dados de skin; `OnClick` ligados a métodos dedicados.【F:Launcher/UnitLauncherMain.pas†L326-L360】 | `btnCloseClick` fecha o form.【F:Launcher/UnitLauncherMain.pas†L231-L234】<br>`btnConnectClick` exibe o splash opcional, inicia `main.exe` e encerra.【F:Launcher/UnitLauncherMain.pas†L411-L433】<br>`btnUpdateClick` abre o formulário de atualização.【F:Launcher/UnitLauncherMain.pas†L401-L409】<br>`btnOptionClick` abre opções com cores herdadas.【F:Launcher/UnitLauncherMain.pas†L391-L399】 | Migre para `Button` personalizados ou controles com suporte a imagens (`Button` + `Image`). |
| `lblStatus` | Recebe posições/tamanho via dados de skin e é exibido apenas se `ShowStatus` estiver ativo.【F:Launcher/UnitLauncherMain.pas†L362-L369】 | Atualizado periodicamente por `TimerServerStatusTimer` para mostrar ping/estado do servidor.【F:Launcher/UnitLauncherMain.pas†L472-L480】 | Use `Label` com `Timer` (`System.Windows.Forms.Timer`). |
| `TimerServerStatus` | Ativado no `FormCreate` quando status está habilitado; `OnTimer` consulta servidor com `Indy` para verificar disponibilidade e latência.【F:Launcher/UnitLauncherMain.pas†L362-L369】【F:Launcher/UnitLauncherMain.pas†L472-L480】 | Evento `TimerServerStatusTimer`. | Em C#, substitua por `System.Windows.Forms.Timer.Tick` e chamadas `TcpClient`/ping. |
| Eventos de janela (`FormPaint`, `FormMouseDown/Move/Up`) | `FormPaint` desenha o bitmap de fundo na tela.【F:Launcher/UnitLauncherMain.pas†L435-L438】<br>Eventos de mouse controlam arrasto da janela borderless armazenando `DragStart` e reposicionando com `SetBounds`.【F:Launcher/UnitLauncherMain.pas†L440-L469】 | | Use `OnPaint` e eventos de mouse do WinForms para reproduzir a movimentação. |
| Método `ParseOptions` | Preenche estruturas `Options` e `Skin` a partir do XML carregado.【F:Launcher/UnitLauncherMain.pas†L124-L229】 | Chamado durante `FormCreate`. | Fundamental para reconstruir objetos equivalentes em C#. |

#### `TfrmLauncherOptions` (`UnitLauncherOptions.pas`)

| Controle | Ajustes em código | Eventos/manipuladores | Observações |
| --- | --- | --- | --- |
| `TRzBmpButton` (`btnClose`, `btnApply`) | Criados em tempo de execução, posicionados com coordenadas da skin e bitmaps aplicados.【F:Launcher/UnitLauncherOptions.pas†L138-L180】 | `btnCloseClick` fecha o formulário.【F:Launcher/UnitLauncherOptions.pas†L90-L93】<br>`btnApplyClick` persiste preferências no registro e fecha a janela.【F:Launcher/UnitLauncherOptions.pas†L95-L110】 | Recrie com botões customizados; substitua acesso ao registro por `Microsoft.Win32.Registry`. |
| `TEdit eAccountID`, `TRzRadioButton rbRes*`, `TRzCheckBox cbSoundONOFF/cbMusicONOFF` | Valores carregados no `FormCreate` a partir do registro e reposicionados conforme skin.【F:Launcher/UnitLauncherOptions.pas†L121-L216】 | Sem eventos adicionais além dos padrão; `btnApplyClick` lê `Checked`/`Text`. | Em WinForms, use `TextBox`, `RadioButton`, `CheckBox`. |
| `lblIDText`, `lblResolution`, `lblSound` | Texto e geometria configurados conforme dados de skin no `FormCreate`.【F:Launcher/UnitLauncherOptions.pas†L181-L212】 | Pintura do background ocorre em `FormPaint`.【F:Launcher/UnitLauncherOptions.pas†L231-L234】 | Utilize `Label` configurado dinamicamente. |
| `BackgroundBitmap` + eventos de arrasto (`imgBackgroundMouse*`, `FormMouse*`) | Implementam arraste para janela borderless tanto quando o usuário clica na imagem quanto em áreas vazias do formulário.【F:Launcher/UnitLauncherOptions.pas†L59-L88】【F:Launcher/UnitLauncherOptions.pas†L236-L265】 | `FormPaint` redesenha a textura de fundo.【F:Launcher/UnitLauncherOptions.pas†L231-L234】 | Traduza para `OnPaint` e eventos de mouse equivalentes. |

#### `TfrmLauncherUpdate` (`UnitLauncherUpdate.pas`)

| Controle | Ajustes em código | Eventos/manipuladores | Observações |
| --- | --- | --- | --- |
| `httpUpdater` (`TIdHTTP`) & `IdCookieManager1` | Usados para baixar arquivos e dados de atualização, com progresso reportado através dos handlers `OnStatus`, `OnWorkBegin`, `OnWork`, `OnWorkEnd`.【F:Launcher/UnitLauncherUpdate.pas†L21-L107】 | Cada evento atualiza `Status` e as `ProgressBar`. | Migre para `HttpClient` com `Progress<HttpProgress>` ou callbacks manualmente. |
| `ProgressBar`, `ProgressBarTotal`, `lbLog`, `Status` | Atualizados durante o download para refletir progresso total, individual e mensagens de log.【F:Launcher/UnitLauncherUpdate.pas†L51-L175】 | Não possuem eventos além das atualizações no código. | Use `ProgressBar` e `ListBox`/`ListView` em WinForms. |
| `btnCancel`, `btnUpdate` | `btnCancelClick` fecha o formulário quando permitido e atualiza o status para “Cancelled”.【F:Launcher/UnitLauncherUpdate.pas†L115-L121】<br>`btnUpdateClick` baixa `update.cfg`, processa MD5 e baixa pacotes faltantes, desabilitando o botão enquanto executa.【F:Launcher/UnitLauncherUpdate.pas†L123-L175】 | Considere tarefas assíncronas para não travar a UI. |

#### `TfrmLauncherSplash` (`UnitLauncherSplash.pas`)

| Controle | Ajustes em código | Eventos/manipuladores | Observações |
| --- | --- | --- | --- |
| `Timer1` | Ativado externamente pelo launcher principal para fechar a splash após intervalo configurado; `Timer1Timer` chama `Close`.【F:Launcher/UnitLauncherSplash.pas†L11-L36】 | `OnTimer` fecha o formulário. | Em WinForms, use `System.Windows.Forms.Timer`. |
| Background & região | `FormCreate` carrega bitmaps do splash e aplica `SetWindowRGN` caso exista máscara; centraliza a janela na tela.【F:Launcher/UnitLauncherSplash.pas†L38-L66】 | `FormPaint` desenha a imagem e `FormClose` libera recursos/remover região.【F:Launcher/UnitLauncherSplash.pas†L68-L80】 | Replique com `Region` e `OnPaint`. |

## Modelos de dados sugeridos

O `TPropertiesView` do Builder grava suas seleções dentro de estruturas de registro como `TOptionsData` e `TSkin`, que alimentam o launcher em tempo de execução.【F:Builder/UnitTools.pas†L119-L138】【F:Builder/UnitTools.pas†L76-L111】 Ao migrar para C#, encapsule esses dados em classes para reduzir o acoplamento entre UI e serialização e facilitar testes. Trate essas classes como um **contrato compartilhado** entre Builder e Launcher: a UI apenas coleta valores e delega validação/serialização para esse núcleo comum, enquanto o launcher consome o mesmo contrato para aplicar as skins e opções.

```csharp
public sealed class LauncherOptions
{
    public bool ShowBrowse { get; set; }
    public bool ShowOption { get; set; }
    public bool ShowUpdate { get; set; }
    public bool ShowSplash { get; set; }
    public bool ShowStatus { get; set; }

    public Color MainBackgroundColor { get; set; }
    public Color MainFontColor { get; set; }
    public Color OptionsBackgroundColor { get; set; }
    public Color OptionsFontColor { get; set; }

    public string BrowseUrl { get; set; } = string.Empty;
    public string SplashBackgroundData { get; set; } = string.Empty;
    public string SplashRegionData { get; set; } = string.Empty;

    public string ServerName { get; set; } = string.Empty;
    public string ServerAddress { get; set; } = string.Empty;
    public string ServerPort { get; set; } = string.Empty;
    public string ServerPage { get; set; } = string.Empty;

    public string UpdateEndpoint { get; set; } = string.Empty;
}

public sealed class SkinLayout
{
    public SkinButtons Buttons { get; } = new();
    public SkinBitmap MainBackground { get; set; } = new();
    public SkinBitmap OptionsBackground { get; set; } = new();
    public SkinBrowserRegion Browser { get; set; } = new();
    public LabelRegion ServerStatus { get; set; } = new();
    public IdRegion AccountId { get; set; } = new();
    public ResolutionRegion Resolution { get; set; } = new();
    public SoundRegion Sound { get; set; } = new();
}

public sealed class SkinButtons
{
    public SkinButton Close { get; } = new();
    public SkinButton Connect { get; } = new();
    public SkinButton Update { get; } = new();
    public SkinButton Options { get; } = new();
    public SkinButton CloseOptions { get; } = new();
    public SkinButton ApplyOptions { get; } = new();
}

public sealed class SkinButton
{
    public string NormalBitmap { get; set; } = string.Empty;
    public string DownBitmap { get; set; } = string.Empty;
    public Point Position { get; set; }
}

public sealed class SkinBitmap
{
    public string BackgroundData { get; set; } = string.Empty;
    public string RegionData { get; set; } = string.Empty;
}

public sealed class SkinBrowserRegion
{
    public Rectangle Bounds { get; set; }
}

public sealed class LabelRegion
{
    public Rectangle Bounds { get; set; }
    public Color FontColor { get; set; }
}

public sealed class IdRegion
{
    public Rectangle Bounds { get; set; }
    public Color FontColor { get; set; }
    public string LabelText { get; set; } = string.Empty;
}

public sealed class ResolutionRegion
{
    public Rectangle LabelBounds { get; set; }
    public IReadOnlyList<string> Options { get; init; } = Array.Empty<string>();
}

public sealed class SoundRegion
{
    public Rectangle LabelBounds { get; set; }
    public IReadOnlyList<string> Options { get; init; } = Array.Empty<string>();
}
```

- **Conversão de propriedades** — Inicialize as instâncias a partir do `PropertyGrid`/controles de edição, copiando o fluxo do `TfrmMain.ActionBuildExecute`, que lê `GeneralProperties` e popular `OptionsData` antes de empacotar o launcher.【F:Builder/UnitMain.pas†L159-L259】 Use fábricas/constructores estáticos para traduzir diretamente dos itens de UI (`PropertyGrid`, `NumericUpDown`, etc.) para as classes de modelo, mantendo a lógica no núcleo comum.
- **Validações centralizadas** — Implemente métodos como `LauncherOptions.Validate()` e `SkinLayout.Validate()` para garantir consistência (ex.: URLs válidas, retângulos dentro do canvas, bitmaps obrigatórios). Dessa forma, o Builder chama `Validate` antes de serializar e o Launcher pode revalidar ao carregar dados distribuídos.
- **Serialização** — Recrie os blocos `Opt1`–`Opt9` montados no Pascal convertendo os objetos em XML ou JSON antes da etapa de criptografia/compactação; isso permite testar a montagem de dados independentemente da UI. Prefira métodos como `LauncherOptions.ToXDocument()`/`FromXDocument()` ou uso de `System.Text.Json` com atributos para manter compatibilidade entre Builder e Launcher.
- **Reutilização no Launcher** — As mesmas classes podem ser compartilhadas entre Builder e Launcher para interpretação dos dados extraídos do XML incorporado, substituindo `ParseOptions` e outras rotinas que atualmente populam registros Delphi.【F:Launcher/UnitLauncherMain.pas†L124-L229】 Ao carregar, o Launcher desserializa para os modelos, chama `Validate` e então aplica as configurações.

### Fluxo recomendado usando o contrato compartilhado

1. **Builder/UI → Modelos:** o formulário chama uma fábrica (por exemplo, `OptionsContract.FromPropertiesView(GeneralProperties)`), que instancia os modelos, executa `Validate` e retorna um resultado rico (sucesso/erros) para permitir mensagens amigáveis antes de prosseguir.
2. **Serialização padronizada:** após validar, o Builder serializa os objetos com a mesma rotina utilizada pelo Launcher (`OptionsContractSerializer.Save(stream, options, skin)`), garantindo que a saída binária/criptografada carregue metadados de versão e checksums para detectar configurações inválidas.
3. **Launcher → Aplicação:** o Launcher faz o caminho inverso (`OptionsContractSerializer.Load(stream)`), obtém instâncias dos modelos, revalida (permitindo recusar pacotes corrompidos) e apenas então aplica os valores aos controles (`ApplyToMainForm(form, models)`), mantendo a lógica de desenho concentrada em um único ponto.
4. **Testes automatizados:** com o contrato isolado, escreva testes unitários que exercitam validações, serialização e compatibilidade de versões sem depender de WinForms, facilitando evolução futura e CI compartilhado entre as soluções.

## Adaptação imediata ao contrato compartilhado

### Builder

1. **Criar camada `Contracts` compartilhada** – Extraia as classes `LauncherOptions`, `SkinLayout` e auxiliares para um projeto/assembly separado (por exemplo, `MuLauncher.Contracts`). Referencie-o tanto no Builder quanto no Launcher para evitar duplicação. Publique também uma API estática `OptionsContractSerializer` com métodos `Load/Save` reutilizáveis.
2. **Mapear coleta de dados do UI para modelos** – Substitua o preenchimento manual de `TOptionsData` em `ActionBuildExecute` por uma fábrica específica (ex.: `LauncherOptionsFactory.FromPropertiesView(GeneralProperties)`) que retorne instâncias do contrato e reporte erros de validação antes de prosseguir.【F:Builder/UnitMain.pas†L148-L259】
3. **Centralizar `BuildSkin` no contrato** – Ajuste `TFrameSkinBuilder.BuildSkin` para retornar um `SkinLayout` populado, delegando conversões de bitmap/base64 para helpers na camada compartilhada. O Builder apenas chama `Validate()`/`Serialize()` e embute o resultado nos recursos gerados.【F:Builder/UnitSkinBuilder.pas†L483-L554】
4. **Atualizar empacotamento** – Reescreva o trecho que monta os blocos `Opt1`–`Opt9` para consumir diretamente a saída do `OptionsContractSerializer.Save(...)`, garantindo que qualquer criptografia/compressão trabalhe sobre o payload padronizado.【F:Builder/UnitTools.pas†L76-L138】
5. **Cobrir com testes** – Adicione testes unitários para `LauncherOptionsFactory` e `SkinLayoutFactory`, usando dados reais das propriedades para assegurar compatibilidade com o contrato antes de gerar executáveis.

### Launcher

1. **Trocar parsing XML legado** – Substitua `ParseOptions` por `OptionsContractSerializer.Load(...)`, que converte o XML/JSON distribuído diretamente para as classes do contrato e executa `Validate()` para rejeitar configurações inválidas.【F:Launcher/UnitLauncherMain.pas†L124-L229】
2. **Reaproveitar modelos ao montar UI dinâmica** – Atualize `FormCreate` para configurar botões, browser e rótulos lendo do `SkinLayout` compartilhado ao invés dos registros Delphi, preservando a lógica de posicionamento e visibilidade.【F:Launcher/UnitLauncherMain.pas†L295-L369】【F:Launcher/UnitLauncherMain.pas†L326-L360】
3. **Aplicar contrato em formulários auxiliares** – Faça `TfrmLauncherOptions` e `TfrmLauncherUpdate` receberem instâncias de `LauncherOptions`/`SkinLayout` (ou subestruturas) via injeção de dependência, evitando leituras diretas do registro ou recursos binários, e mantendo consistência visual com o Builder.【F:Launcher/UnitLauncherOptions.pas†L121-L216】【F:Launcher/UnitLauncherUpdate.pas†L51-L175】
4. **Sincronizar persitência de preferências** – Utilize métodos auxiliares do contrato (por exemplo, `LauncherPreferences.ApplyTo(LauncherOptions options)`) para salvar/carregar preferências do usuário, permitindo que o Launcher e futuros utilitários compartilhem o mesmo formato.
5. **Garantir interoperabilidade com testes** – Crie testes que carreguem pacotes gerados pelo Builder e verifiquem que todas as janelas (principal, opções, splash) aplicam corretamente as informações de skin/opções, simulando cenários de versões antigas para validar compatibilidade retroativa.

## Próximos passos

1. Planeje wrappers ou controles customizados quando o WinForms não oferecer equivalente direto (ex.: grid de propriedades customizada, grade de posicionamento no editor de skins).
2. Implemente testes visuais incrementais, migrando formulário por formulário e conectando os eventos conforme a lógica Pascal existente.

