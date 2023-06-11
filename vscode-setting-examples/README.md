# VSCode Settings Examples

VSCode上でより良い開発をするための設定集です。

## devcontainerを利用する場合

### devcontainerの起動

- プロジェクトルートに`.devcontainer`ディレクトリとその下に`devcontainer.json`ファイルを作成し、[こちら](./.devcontainer/devcontainer.json)の内容を貼り付けます。  
- `Open Folder in Container...`を実行することですぐに開発環境を起動できます。
- これによりBashのスクリプト開発に必要なVSCodeの設定と拡張機能が入ったdevcontainerが利用できます。

### 開発環境の整備

- `settings.json`と`extensions`については`devcontainer.json`に含まれているので、コードスニペットとデバッグの設定をします。
- コードスニペットの設定は以下の二つのやり方のうちどちらかを実施します。
  - コードスニペットをプロジェクトのみに適用する場合は、プロジェクトルートに`.vscode`ディレクトリとその下に`shellscript.code-snippets`を作成し、[こちら](./.vscode/shellscript.code-snippets)の内容を貼り付けます。
  - コードスニペットをユーザー設定全体に適用するには`Configure User Snippets`にて`shellscript`を選択して[こちら](./.vscode/shellscript.code-snippets)の内容を貼り付けます。
- デバッグの設定は`.vscode`ディレクトリとその下に`launch.json`を作成し、[こちら](./.vscode/launch.json)の内容を貼り付けます。

## devcontainerを利用しない場合

### 開発環境の整備

- VSCodeの設定は以下の二つのやり方のうちどちらかを実施します。
  - VSCodeの設定をプロジェクトのみに適用する場合は、プロジェクトルートに`.vscode`ディレクトリとその下に`settings.json`を作成し、[こちら](./.vscode/settings.json)の内容を貼り付けます。
  - VSCodeの設定をユーザー設定あるいは開発環境に適用するには`Open Settings (JSON)`を開き[こちら](./.vscode/settings.json)の内容を貼り付けます。Remote Developmentを利用している場合は、リモート先に対して実施すると良いでしょう。
- 拡張機能の設定は以下の二つのやり方のうちどちらかを実施します。
  - プロジェクトルートに`.vscode`ディレクトリとその下に`extensions.json`を作成し、[こちら](./.vscode/extensions.json)の内容を貼り付けます。拡張機能が案内されるので案内に従ってインストールします。
  - [こちら](./.vscode/extensions.json)の内容をそのままVSCodeの拡張機能追加画面で検索しインストールします。
- コードスニペットの設定は以下の二つのやり方のうちどちらかを実施します。
  - コードスニペットをプロジェクトのみに適用する場合は、プロジェクトルートに`.vscode`ディレクトリとその下に`shellscript.code-snippets`を作成し、[こちら](./.vscode/shellscript.code-snippets)の内容を貼り付けます。
  - コードスニペットをユーザー設定全体に適用するには`Configure User Snippets`にて`shellscript`を選択して[こちら](./.vscode/shellscript.code-snippets)の内容を貼り付けます。
- デバッグの設定は`.vscode`ディレクトリとその下に`launch.json`を作成し、[こちら](./.vscode/launch.json)の内容を貼り付けます。

