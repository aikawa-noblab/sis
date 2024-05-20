# 第5回のページ



## 課題について

第5回のレポート提出期限は <span style="color: red;">2024年06月03日 15:15</span> まで。



#### 必修課題は全部で4つ（演習1から演習4）。ボーナス課題は1つ（演習5）。
- 演習1. ティッピングポイントの例 (3点)
- 演習2. 森林火災シミュレータの実装 (2点)
- 演習3. 森林火災シミュレータの改良 (3点)
- 演習4. 病気感染シミュレータの実装 (5点)
- 演習5. 病気感染シミュレータの改良 (+5点)






## 1. ティッピングポイントの例

#### 演習1 [3点]
ダンス男のように、皆さん自身、なにか新しいムーブメントを起こそうとしていたら、それを文字数は<span style="color: red;">300文字以上</span>で紹介してください。
あるいは、近い将来こんなムーブメントを起こそうとしていれば、それを書いてください。







## 2. 森林火災シミュレータ「Megumi-San」(めぐみさん)
「め組」とは江戸時代の町火消しのことです。
今回、パーコレーションに基づき森林火災をシミュレーションする「Megumi-San」(めぐみさん)を作成してもらいます。
基本的な処理は、前回の二次元セルオートマトンと同じです。

<p align="center"><a href="megumi_san1.pde" download="megumi_san1.pde" target="_blank"><u>森林火災シミュレータ「Megumi-San」</u></a></p>


<p align="center"><img src="sample_1.png" width="300" height="300" border="1"></p>
<p align="center"><strong>Megumi-Sanの実行結果</strong></p>

「Megumi-San」の動きを理解したら、以下の演習に挑戦しましょう。




#### 演習2 [2点]
木の存在確率の変数 density を調整することで、火災の広がり具合がどのようになるのか、調べてみましょう。つまり、以下のような表を埋めるように、ひたすら実験してみましょう。

| 植樹率 | パーコレーションの確率 |
|  ---- | ----               |
|   40% | ?                  |
|   50% | ?                  |
|   60% | ?                  |
|   70% | ?                  |
|   80% | ?                  |
|   90% | ?                  |


各植樹率に対して、例えば10回シミュレーションを行い、そのうち何回パーコレーション（垂直、あるいは水平方向に連続した火災のパスができること）になったのかを観測すると、上記の表を作成できることになります。（パーコレーションになったか否かは、目視による判定で結構です。自動判定するように改良してもOKです。）

横軸に植樹率、縦軸にパーコレーションの確率をとってみると、授業中に説明したような非線形なグラフになるでしょうか？確認して、レポートしてください。

**※シミュレーションのスピードを上げるために、フレームレートを上げるとよいでしょう。**



#### さて、緑色の粒子だと、あまりリアリティがありませんね。以下のプログラムでは、少し色づかいに変化をつけたり、森らしく描画を行っています。これをベースに改良を加えてみてください。

<p align="center"><a href="megumi_san2.pde" download="megumi_san2.pde" target="_blank"><u>ちょっと色っぽい、森林火災シミュレータ「Megumi-San2」</u></a></p>

<p align="center"><img src="sample_2.png" width="500" height="500" border="1"></p>
<p align="center"><strong>Megumi-San2の実行結果</strong></p>






#### 演習3 [3点] Megumi-San2に対して、つぎの機能追加を行ってください

1. 風向きおよび風の強さを導入する
2. 木の性質（燃えやすい木、燃えにくい木）を導入する

上記の機能追加をどのように実現したのかを簡単に説明し、改良したプログラムおよび実行結果をキャプチャし、レポートしてください。








## 3. 病気の感染シミュレータ「epidemic simulator」

これまでは、動きのない森林を相手にシミュレーションをしてきましたが、今度は動きのあるものを対象にシミュレータを作ってみましょう。  想定する空間は理想的なトーラス状の平面とし、人間（のような玉）が動き回り、互いに接触のあったときに病気が感染するという単純なものです。

<p align="center"><a href="epidemic1.pde" download="epidemic1.pde" target="_blank"><u>病気の感染シミュレータ「Usturun-Death」</u></a></p>


  <p align="center"><img src="epidemic/sample_3.png" width="400" height="400" border="2">


#### 練習
プログラム中のMax_Humanを変更すると、シミュレータに登場する人間の数が変わります。この人数を調整し、病気の伝搬の具合がどのようになるのか、調べてみましょう。


上記のプログラムでは、黙って様子を見ているだけなので、定量的な観測ができなくて面白くないですね。以下のプログラムでは、経過時間、病気の人数、健康な人の人数をカウントし、常時表示するように改良しています。
実行してみてどうでしょうか？シミュレーションっぽくなってきたでしょうか？

<p align="center"><a href="epidemic2.pde" download="epidemic2.pde" target="_blank"><u>感染シミュレータ2「epidemic simulator2」</u></a></p>

  <p align="center"><img src="epidemic/sample_4.png" width="400" height="480" border="2"></p>





#### 演習4 [5点]
epidemic simulator2 に以下の機能を追加し、シミュレータ上で人類が生き残れるか、そうでないかのシナリオを描いてみてください

- 1) 正常な人間について、一定時間経過すると、増殖する
- 2) 感染した人間ついて、一定の割合で死亡する→シミュレータ上から消える
- 3) 感染した人間について、2) を除く割合かつ一定時間で、正常な人間に戻る。この場合、免疫は獲得せずに、ふたたび感染する可能性を有するとする


以上の機能を追加し、2)　の一定の割合で死亡する、および3)の一定時間の割合を適宜変化させることで、どのようなシナリオが描かれるのかを考察せよ。





#### 演習5 ボーナス [+5点]

epidemic simulator2 では、MAP行列が空間の状態（人がいるか、障害物があるかどうか）を判定する変数となっている。この行列を用いて、空間内に仕切りの壁を設置せよ。例えば、以下の図の緑のような壁。


<span style="color: red;">※壁の衝突判定について、プログラムを改良しなければなりません。注意してください。</span>




この壁に穴をあけて、そこから人が自由に出入りできるようにすると、このシミュレータの人々のふるまいはどのようになるであろうか？また穴の大きさによって、どのようなシナリオが描かれるのか、考察せよ





<p><img src="epidemic/result.png" width="500" height="600"></p>













Copyright © Hajime Nobuhara, All Rights Reserved.