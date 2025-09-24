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

## Próximos passos

1. Crie classes de modelo (por exemplo, `SkinLayout`, `LauncherOptions`) para representar os grupos de propriedades exibidos no `TPropertiesView`.
2. Planeje wrappers ou controles customizados quando o WinForms não oferecer equivalente direto (ex.: grid de propriedades customizada, grade de posicionamento no editor de skins).
3. Implemente testes visuais incrementais, migrando formulário por formulário e conectando os eventos conforme a lógica Pascal existente.

