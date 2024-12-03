# Marimoコマンド

まりもを管理・育成するためのシンプルなコマンドラインツールです。デジタル上でまりもを育成し、成長を追跡します。水質や成長データを管理し、実際のまりも育成のような感覚を楽しむことができます。

## 機能

- まりもの成長を管理
- 水質の表示・管理
- まりもの名前を変更
- まりもの成長をリセット
- `zsh`と互換性あり

## 要件

- **zsh**（Zシェル）がこのコマンドの実行に必要です。インストールされていない場合は、HomebrewやAPTでインストールされますが、zshがプリインストールされていない環境では、zshを手動でインストールする必要があります。

## インストール

### Homebrew（macOSまたはLinux）

```bash
brew tap yourusername/marimo
brew install marimo
```

### APT(Debian/Ubuntu)

**近日公開**

<!-- 1.リポジトリをソースリストに追加します：

```bash
sudo add-apt-repository ppa:sewaddle540/marimo
sudo apt-get update
```

2.パッケージをインストールします：

```bash
sudo apt-get install marimo
``` -->

### 手動インストール
1.リポジトリをクローンします：

```bash
git clone https://github.com/sewaddle540/marimo.git
cd marimo
```

2.スクリプトをインストールします：

```bash
sudo cp marimo /usr/local/bin/
sudo chmod +x /usr/local/bin/marimo
```

3.(オプション)マニュアルページをインストールします：

```bash
sudo cp man/marimo.1 /usr/share/man/man1/
sudo gzip /usr/share/man/man1/marimo.1
```


## 使い方

`marimo`と実行するだけでまりもの成長を管理できます：

```bash
marimo [-wq] [-cw] [-n] [-r]
```

### オプション

- `-wq`:水質の表示(入力しなくてもデフォルトで表示されます)
- `-cw`:水の交換（水質を100％にします）
- `-n`:まりもの名前を変更
- `-r`:まりもの成長をリセット

### 実行例
```bash
$ marimo
Marimo  Water-Quality:96%  Size:5.021007mm

$ marimo -wq
Marimo  Water-Quality:96%  Size:5.021028mm

$ marimo -n
Change name?: Marimari
Changed name.
Marimari  Water-Quality:96%  Size:5.021056mm

$ marimo -cw
Chaged water.
Marimari  Water-Quality:100%  Size:5.021077mm

$ marimo -r
Do you want to reset marimo growth? (y/n): n
Marimari  Water-Quality:100%  Size:5.021091mm

$ marimo -r
Do you want to reset marimo growth? (y/n): y
Reseted marimo.
Marimo  Water-Quality:100%  Size:1.000000mm

```
