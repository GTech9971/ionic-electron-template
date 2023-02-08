# ionic-electron-template
 ionic(react)でelectronを作成するテンプレート

## ionic set-up
`ionic start`

`ionic build --prod`

## electron set-up

@参考ページ
- https://github.com/capacitor-community/electron
- https://capacitor-community.github.io/electron/docs/gettingstarted

必要パッケージインストール

`npm i @capacitor-community/electron`

`npx cap add @capacitor-community/electron`

### electron 起動
`npx cap open @capacitor-community/electron`

## electron package set-up
@参考ページ
- https://www.electronjs.org/ja/docs/latest/tutorial/tutorial-packaging

`cd electron`

`npm install --save-dev @electron-forge/cli`

`npx electron-forge import`

`npm run make`

以上.