# Testes visuais — `TfrmLauncherSplash`

## Checklist manual

1. Abrir o `LauncherSplashPreviewForm` pelo projeto `MuLauncher.Launcher.WinForms` e verificar:
   - [ ] A janela inicia centralizada, sem moldura e com o fundo preto enquanto nenhum asset é carregado.
   - [ ] Após carregar o `BACKGROUND_MAIN.bmp` via `LauncherOptionsPropertyPanel`, a splash assume exatamente as dimensões da arte e aplica o recorte da região (quando presente).
   - [ ] O arrasto com o botão esquerdo do mouse movimenta a janela de splash sem atrasos.
   - [ ] O `Timer` de autoclose encerra a janela após ~2,5 segundos quando acionado pelo preview.
   - [ ] A abertura repetida do preview reaproveita as opções coletadas pelo painel e não reaplica arte em branco.

2. Validar que `LauncherOptionsPropertyPanel` atualiza o snapshot em tempo real:
   - [ ] Carregar um novo `BrowseUrl` e confirmar que o campo muda imediatamente no grid.
   - [ ] Limpar a região (`Clear region`) e observar o preview ocupando a área retangular completa.
   - [ ] Recarregar a região para restaurar a máscara original.

## Automação de fumaça visual

- Harness: `tests/MuLauncher.Visual.Tests/LauncherSplashVisualTests.cs`.
- Base assets: `images/BACKGROUND_MAIN.bmp` (legado Pascal) reutilizado via `LauncherOptions.SetSplashBackgroundFromFile`.
- Baseline gerada: `tests/VisualBaselines/TfrmLauncherSplash/default.bmp.base64` (conteúdo base64 de um BMP para evitar arquivos binários no repositório).

### Como executar

```bash
# Gera/atualiza baseline automaticamente quando ausente
# dotnet run --project tools/MuLauncher.VisualBaselineGenerator

# Valida o snapshot
# dotnet test MuLauncher.sln --filter LauncherSplashVisualTests
```

> **Nota:** O gerador grava o bitmap de referência como texto base64 (`*.base64`). Assim é possível revisar diffs no controle de versão sem anexar arquivos binários ao PR.

O teste compara pixel a pixel o render atual (`LauncherSplashRenderer`) com a baseline. Em caso de divergência são emitidos arquivos auxiliares em `tests/artifacts/` (`*.received.png` e `*.diff.png`).
