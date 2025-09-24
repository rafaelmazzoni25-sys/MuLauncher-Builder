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

## Próximos passos

1. Catalogue as propriedades e eventos de cada controle nos arquivos `.pas` correspondentes para migrar a lógica de eventos. 
2. Crie classes de modelo (por exemplo, `SkinLayout`, `LauncherOptions`) para representar os grupos de propriedades exibidos no `TPropertiesView`. 
3. Planeje wrappers ou controles customizados quando o WinForms não oferecer equivalente direto (ex.: grid de propriedades customizada, grade de posicionamento no editor de skins). 
4. Implemente testes visuais incrementais, migrando formulário por formulário e conectando os eventos conforme a lógica Pascal existente.

