# MuLauncher Builder

MuLauncher Builder é um conjunto de ferramentas em .NET voltado para modernizar e
customizar o launcher do Mu Online. O projeto inclui uma aplicação WinForms que
permite configurar opções do launcher e visualizar em tempo real a tela de splash
gerada a partir dos assets fornecidos, garantindo que a migração do legado em
Delphi para C# mantenha aparência e comportamento esperados.

## Recursos principais

- **Pré-visualização da splash screen** – A aplicação `MuLauncher.Launcher.WinForms`
  inicializa com o formulário `LauncherSplashPreviewForm`, exibindo um painel de
  propriedades e uma área de preview para validar a renderização antes de
  embutir os assets no launcher final.
- **Configuração guiada das opções do launcher** – O controle
  `LauncherOptionsPropertyPanel` centraliza a edição de visibilidade dos botões,
  URLs, informações de servidor e carregamento dos bitmaps de fundo/região a
  partir de arquivos locais, simplificando a serialização em Base64 usada pelo
  launcher.
- **Renderização com ImageSharp** – O módulo compartilhado `MuLauncher.Shared.UI`
  fornece o `LauncherSplashRenderer`, responsável por aplicar máscaras de
  transparência (região) sobre o bitmap de fundo utilizando a biblioteca
  SixLabors.ImageSharp.

## Requisitos

- Windows 10 ou superior.
- [.NET SDK 8.0](https://dotnet.microsoft.com/en-us/download).
- Assets do launcher (ex.: `BACKGROUND_MAIN.bmp` e máscara opcional) salvos em
  disco para serem importados.

## Estrutura do repositório

- `src/MuLauncher.Launcher.WinForms/` – Aplicação de pré-visualização do launcher.
- `src/MuLauncher.Shared.UI/` – Biblioteca compartilhada com modelos, controles e
  rotinas de renderização.
- `tests/MuLauncher.Visual.Tests/` – Conjunto de testes que exercita a
  renderização das imagens para garantir regressão visual.
- `images/` – Exemplos de assets legados carregados automaticamente na primeira
  execução para facilitar o início da configuração.
- `Builder/` e `Launcher/` – Código legado em Delphi usado como referência durante
  a reescrita para .NET.

## Como executar a aplicação de preview

1. Abra um terminal na raiz do repositório.
2. Restaure as dependências: `dotnet restore`.
3. Compile a solução: `dotnet build MuLauncher.sln`.
4. Execute o preview da splash screen:
   ```bash
   dotnet run --project src/MuLauncher.Launcher.WinForms
   ```
5. Utilize o painel à esquerda para alterar opções do launcher. As mudanças são
   aplicadas automaticamente na pré-visualização à direita.

> **Observação:** a aplicação WinForms só pode ser executada em ambientes
> Windows porque depende de APIs específicas da plataforma.

## Utilizando seus próprios assets

1. Clique em **Load background** para selecionar a imagem base (BMP, PNG ou JPG).
2. Opcionalmente, carregue uma máscara em tons de cinza via **Load region mask**
   para definir a transparência da janela.
3. Caso deseje remover a máscara, utilize **Clear region**.
4. Ajuste demais propriedades (botões visíveis, URL de navegação, nome/endereço
   do servidor) diretamente no painel de propriedades.
5. Clique em **Open splash preview** para visualizar a splash com comportamento
   de janela (tempo de auto-fechamento, recorte da região, etc.).

Todos os dados carregados permanecem na memória enquanto a aplicação estiver
aberta. Para persistir as informações em outro formato (ex.: empacotar no
launcher final), reutilize os modelos expostos em `MuLauncher.Shared.UI`.

## Executando os testes

Os testes automatizados garantem que a renderização de imagens continue
compatível ao evoluir o código:

```bash
dotnet test MuLauncher.sln
```

Os testes utilizam xUnit e comparam a saída gerada com instantâneos armazenados
em disco. Se algum teste falhar, atualize os assets de baseline conforme
necessário.

## Próximos passos sugeridos

- Migrar gradualmente o código Delphi em `Builder/` e `Launcher/` para os
  projetos .NET correspondentes.
- Expandir a suíte de testes visuais com cenários adicionais (resoluções,
  combinações de máscara) para aumentar a confiança em mudanças futuras.
- Integrar o empacotamento do launcher e do updater à nova base de código,
  utilizando os modelos e renderizadores já implementados.
