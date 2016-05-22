# プロビジョンファイル
# プロビジョンファイルをgitで管理している場合

exit 1 # ここで処理を強制停止。git更新するならここのコメントアウトしない。

if [ -e fastlane/myprovisionfiles ]; then
   git -C fastlane/myprovisionfiles pull
else
   git clone "ここにURL" fastlane/myprovisionfiles
fi
