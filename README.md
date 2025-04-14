# ISHI会版OpenMPW TR10-1について
これは、[ISHI会版OpenMPW TR10-1](https://ishi-kai.org/openmpw/shuttle/tr10/2024/10/15/shuttle_ISHI-Kai_OpenMPW-TR10-1_start.html)にみんなで相乗りしたxschemによる回路図とklayoutによるレイアアウト置き場です。


## みんなの[相乗りチップ](Submitted/all_members_layout.gds)
- ![all_members_layout](images/submited_layout.png)
- ![all_members_layout_using](images/submited_layout_name.png)
- ![chip_photo](chip_photo/chip_photo.JPG)

### 相乗りチップのラベル
- 緑枠  
-- DCDC回路  
- オレンジ枠  
-- 初めてのInverter回路  
- 紫枠  
-- 初めてのInverter回路だけどピン不足によりレイアアウト配置のみ  


# 参加者リスト
- [dokunira](https://github.com/dokunira/inverter_layout)
- [f0r3st](https://github.com/foorests/inverter_ISHI)
- [hiro-ogawa](https://github.com/hiro-ogawa/ishi-kai-OpenMPW-TR10-1)
- [hyumanase](https://github.com/hyumanase/inverter)
- [matsumoto325](https://github.com/matsumoto325/ISHI-Kai-commit/)
- [monmonmon](https://github.com/monmonmon/ishi-20241027)
- [tomoya_nonymous](https://github.com/tomoyanonymous/20241027_ishikai_inverter)
- [xian_DIY](https://github.com/ugeugeHigh/ISHI_xian_first)
- [masahiro](https://github.com/pochiMasahiro/inverter_masahiro)
- [lufe](https://github.com/1uf3/)
- [noritsuna](https://github.com/noritsuna/)
- [sebasu](https://github.com/sebasu-semi/)
- [akapochi](https://github.com/akahoshi0502/)


## 各種リスト
- [ピンリスト](docs/pin_list.pdf)


# 参加者のデザイン
## [dokunira](https://github.com/dokunira/inverter_layout)：Inverter回路
### MOSのパラメータ
| | ゲート幅 w (μm) | ゲート長 l (μm) |
|----|----|----|
|PMOS| 4 | 1 |
|NMOS| 2 | 1 |

### 感想
以前からオープンソースのレイアウトソフト「KLayout」で設計を行いたいと思っていましたが、なかなか取り組む機会がありませんでした。今回は教えていただきながら進めたことで、短時間で設計を完了することができました。Design Rules Check (DRC) や xschemとの連携による Layout Versus Schematic (LVS) などのレイアウト検証も行え、大変満足しています。ありがとうございました。

- ![回路図](member_project/dokunira/inverter_layout/inv_schem.jpeg)
- ![レイアウト](member_project/dokunira/inverter_layout/inv_layout.jpeg)

#### Dラッチ回路
[初めての半導体設計・製造体験 for ISHI会のOpenMPW](https://ishikai.connpass.com/event/332952/) でインバータのレイアウト設計をした後、枠がもし余っていたらと思って作ったDラッチのレイアウトです。  

- ![回路図](member_project/dokunira/Dlatch_layout/Dlatch_sch.jpeg)
- ![レイアウト](member_project/dokunira/Dlatch_layout/Dlatch_gds.jpeg)
- ![レイアウト with pad](member_project/dokunira/Dlatch_layout/Dlatch_pad.jpeg)


## [f0r3st](https://github.com/foorests/inverter_ISHI)：Inverter回路
### 感想
アナログ回路について、教科書で仕組みやいくつかの回路を読んだりはしていたのですが、具体的な実装方法が分からなかったので今回のイベントに参加しました。  
xschemやklayoutを使って実際に回路図やレイアウトパターンを作るのが楽しかったです。ありがとうございました！  

- ![回路図](member_project/f0r3st/schematic.png)
- ![レイアウト](member_project/f0r3st/layout.png)


## [hiro-ogawa](https://github.com/hiro-ogawa/ishi-kai-OpenMPW-TR10-1)：Inverter回路
- 環境構築
  - [セットアップスクリプト](https://github.com/ishi-kai/OpenRule1umPDK_setupEDA)
  - セットアップスクリプトの中身を確認したら、環境構築をガリガリやっているので、怖くなって専用PCを用意して、OSをクリーンインストール
  - Ubuntu 22.04.5 をセットアップ

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y git

git clone git@github.com:ishi-kai/OpenRule1umPDK_setupEDA.git

cd OpenRule1umPDK_setupEDA
bash ./eda-setup.sh
bash ./pdk_TR-setup.sh
```

- 使ったツール
  - xschem
  - ngspice
  - klayout

### 設計情報

- Pch FET
  - W: 60um
  - L: 10um
- Nch FET
  - W: 20um
  - L: 10um

### シミュレーション結果
- ![シミュレーション・電圧](member_project/hiro-ogawa/images/vout.png)
- ![シミュレーション・電流](member_project/hiro-ogawa/images/ivd.png)

### 感想
- とりあえず最後まで完走できた
- 事前にOSのクリーンインストールをしておいたので、セットアップで問題が発生することがなくて良かった
- 半導体が自分で作れるって夢が広がる
- まぁそう言っても、すごいチップが作れるわけではないだろうけど・・・
- アナログ回路がわからんといけないのかな
- ツールが全体的に使いにくいのが残念

- ![回路図](member_project/hiro-ogawa/images/schematic.png)
- ![レイアウト](member_project/hiro-ogawa/images/layout.png)


## [hyumanase](https://github.com/hyumanase/inverter)：Inverter回路
### 感想
[2024年10月イベント：初めての半導体設計・製造体験 for ISHI会のOpenMPW - connpass](https://ishikai.connpass.com/event/332952/)にて、初めての半導体設計をしました。難しくもたのしい時間でした。マウスと、めげない心と、皆さんの支えでなんとかなりました。ありがとうございました！  

- ![回路図](member_project/hyumanase/schematic.png)
- ![レイアウト](member_project/hyumanase/layout.png)


## [matsumoto325](https://github.com/matsumoto325/ISHI-Kai-commit/)：Inverter回路
### 感想

* 会場について

     GMO Yours・フクラスの図書室で実施。施設はとてもきれいでした。  
     結構前に渋谷駅に着いたのですが、道がだいぶ変わっていて場所がわからない。下見をするかネットで良く調べてから行けばよかった。  
     少し遅れて到着したのでConnpassのフィードで連絡したのですが返信なし。たまたま中の人を一人知っていたので個別に連絡とって中に入れました。その節はお手数をおかけいたしました。

* 講習について

     環境の構築はスクリプト2発で出来て、時間はかかりましたが簡単に準備ができました。  
     資料は記載された内容のままに操作すれば出来るような書き方にはなっていなくて手間取りましたが、それがかえって理解度の向上につながった気がします。  

* xschem について

     操作感は慣れるまで少しかかったけど、なかなか良かった。ライブラリも事前にある程度用意してくれたのでさくさく進められましたが、自分で作らなければならない局面とかあるのかな？と思ったりしてますが、まだ調べてないです。どこかで拾ってインポートする方法とかも聞いてみたいです。

* klayout について

     もっと自動的に配置してくれるのかと思ったら以外に手動でしたｗ  
     1bit メモリに値する回路でもこんなに苦労するんだったら、大型のチップを焼くのにはどのくらい労力がかかるのだろうと思うと、いつも大型の LSI を設計してくれてる人たちに感謝の気持ちが湧いてきました。
     他の人のレイアウトを覗き見したら面白いレイアウトがあって、それも楽しめました。


- ![回路図](member_project/matsumoto325/schematic.png)
- ![レイアウト](member_project/matsumoto325/layout.png)


## [monmonmon](https://github.com/monmonmon/ishi-20241027)：Inverter回路
### 感想
お絵描きツールの使い方を覚えた！  

- ![回路図](member_project/monmonmon/schematic.png)
- ![レイアウト](member_project/monmonmon/layout.png)


## [tomoya_nonymous](https://github.com/tomoyanonymous/20241027_ishikai_inverter)：Inverter回路
### 感想
（感想）ほぼ初心者状態からのスタートでしたが一応作れたようなのでよかったです！  

- ![回路図](member_project/tomoya_nonymous/schematic.png)
- ![レイアウト](member_project/tomoya_nonymous/layout.png)


## [xian_DIY](https://github.com/ugeugeHigh/ISHI_xian_first)：Inverter回路
### 感想
色々教えて頂きありがとうございました！  
初めてのツールという事もあり、開発環境の構築で躓いてしまいました。  
UbuntuをいれたLets noteを持って会場にいったのですが、何故か何度もフリーズしてしまい…  
当日は完走できませんでしたが、翌日自宅のメイン環境で再度環境構築をしてトライしてみたところ、なんとか最後までいきつけました。  
製造枠がまだ空いているとのことで頑張ってみたのですが、果たして間に合うか！？  

- ![回路図](member_project/xian_DIY/schematic.png)
- ![レイアウト](member_project/xian_DIY/layout.png)


## [masahiro](https://github.com/pochiMasahiro/inverter_masahiro)：Inverter回路
### 感想
FET2個の単純なインバータでもIC設計を体験することができてとても楽しかったです。資料も充実していて独学でも困りませんでした。次はもう少し複雑な回路を設計してみようと思います。  

- ![回路図](member_project/masahiro/schematic.png)
- ![レイアウト](member_project/masahiro/layout.png)



## DCDC_DOWN_Converter_4_ISHI-KAI_OpenMPW_TR10-1
ISHI-KAI_Multiple_Projects_OpenMPW_TR10-1 向けの降圧型DCDCコンバータ（12v->5V）です。


### Members 
- [lufe](https://github.com/1uf3/vco)
    - VCO担当
- [noritsuna](https://github.com/noritsuna/DCDC_DOWN_Converter_4_ISHI-KAI_OpenMPW_TR10-1)
    - 降圧部担当


### 内容
- ![DCDC_DOWN_SLIDE_1](member_project/DCDC_DOWN/images/DCDC_down/slide1.png)
- ![DCDC_DOWN_SLIDE_2](member_project/DCDC_DOWN/images/DCDC_down/slide2.png)
- ![DCDC_DOWN_SLIDE_3](member_project/DCDC_DOWN/images/DCDC_down/slide3.png)

### vco
[lufe](https://github.com/1uf3/vco)担当

#### xschem

##### inverter

![inverter](https://raw.githubusercontent.com/1uf3/vco/main/images/inverter.png)

##### buffer

![buffer](https://raw.githubusercontent.com/1uf3/vco/main/images/buffer.png)

##### vco

![vco](https://raw.githubusercontent.com/1uf3/vco/main/images/vco.png)

##### simulated vco hz

![simulated_vco_hz](https://raw.githubusercontent.com/1uf3/vco/main/images/simulated_vco_hz.png)

#### klayout

![klayout_vco](https://raw.githubusercontent.com/1uf3/vco/main/images/klayout_vco.png)


### 降圧部
#### xschem
- ![xschem_tb](member_project/DCDC_DOWN/images/xschem_tb.png)

##### simulation
- ![xschem_ngspice](member_project/DCDC_DOWN/images/xschem_ngspice.png)
- ![xschem_ngspice_cir](member_project/DCDC_DOWN/images/xschem_ngspice_cir.png)

#### klayout
- ![klayout_dcdc_base](member_project/DCDC_DOWN/images/klayout_dcdc_base.png)


### 降圧型DCDCコンバータ
#### xschem
- ![xschem_full](member_project/DCDC_DOWN/images/xschem_full.png)

##### simulation
- ![xschem_full_ngspice](member_project/DCDC_DOWN/images/xschem_full_ngspice.png)
- ![xschem_full_ngspice_cir](member_project/DCDC_DOWN/images/xschem_full_ngspice_cir.png)

#### klayout
- ![klayout_dcdc_down](member_project/DCDC_DOWN/images/klayout_dcdc_down.png)


## [昇圧型DCDCコンバータ](member_project/BoostDCDC/)
ISHI-KAI_Multiple_Projects_OpenMPW_TR10-1 向けの降圧型DCDCコンバータ（5V->12v）です。

### Members 
- [sebasu](https://github.com/sebasu-semi/)
    - 昇圧部担当
- [akapochi](https://github.com/akahoshi0502/)
    - 変換担当

### [昇圧型DCDCコンバータ](member_project/BoostDCDC/)
#### xschem
- ![Boost_xschem](https://github.com/sebasu-semi/BoostDCDC/raw/main/images/Boost_xschem.png)

#### ngspice
- ![Boost_ngspice](https://github.com/sebasu-semi/BoostDCDC/raw/main/images/Boost_ngspice.png)

#### klayout
- ![Boost_klayout](https://github.com/sebasu-semi/BoostDCDC/raw/main/images/Boost_klayout.png) 


# 測定会
## 製造されたチップ
到着したチップです。  

- ![chip_01](chip_photo/chip_01.jpg)
- ![chip_baredie](chip_photo/chip_baredie.JPG)


チップ写真です。  

- ![chip_photo](chip_photo/chip_photo.JPG)


## ボンディング
パッケージの選択肢がないため、自分たちでボンディングすることにしました。  
そこで、ボンディング用の基板をKiCADで設計して、製造しました。

- ![Bonding Boardアートワーク](images/bonding_board_kicad.png) 

- [Bonding Board](kicad/OpenMPW-TR10/) 

### ボンディング用のボード
ボンディング用のボードにベアダイを張り付けた状態です。  
今回はUVレジンで貼り付けました。本来ならペースト半田で取り付けるのが良いかと思います。  

- ![bonding board 1](images/bonding_board_01.jpg)
- ![bonding board 2](images/bonding_board_02.jpg)
- ![bonding board 3](images/bonding_board_03.jpg)


### ボンディング作業風景
ボンディング中の風景です。  
みんな、初めてのため苦戦しました。  

- ![bonding work 1](images/bonding_work_01.jpg)
- ![bonding work 2](images/bonding_work_02.jpg)
- ![bonding work 3](images/bonding_work_03.jpg)


### ボンディング完了
無事にボンディングが完了したチップたちです。  

- ![bonding_chip_01](images/bonding_chip_01.jpg)
- ![bonding_chip_02](images/bonding_chip_02.jpg)
- ![bonding_chip_03](images/bonding_chip_03.jpg)


### ポッティング完了
ボンディングしたチップをUVレジンでポッティングしました。  
思ったよりもきれいにポッティングできたようです。  
透明なため特性としては最悪ですが、観察用には最適でした。  

- ![bonding_potting_01](images/bonding_potting_01.jpg)
- ![bonding_potting_02](images/bonding_potting_02.jpg)
- ![bonding_potting_03](images/bonding_potting_03.jpg)
- ![bonding_potting_04](images/bonding_potting_04.jpg)
- ![bonding_potting_05](images/bonding_potting_05.jpg)
- ![bonding_potting_06](images/bonding_potting_06.jpg)


### ボンディング測定
ボンディングしたチップを測定しました。  
動作点が4Vとなりました。ちょっと高いため、ハズレかけていて接触抵抗が高い線が紛れていそうです。  

- ![bonding_measure_01](images/bonding_measure_01.jpg)
- ![bonding_measure_02](images/bonding_measure_02.png)


## パッケージされたチップ
東海理化さんのご厚意により「パッケージした場合のサンプル」としてISHI会のチップをパッケージしていただけました！  

- ![chip_package](images/chip_package.JPG)


## 測定会風景
測定用の装置やセットアップ中の風景です。  

- ![measure_device](images/measure_device.jpg)
- ![measure_setup](images/measure_setup.jpg)


### インバーター測定
1kHz, 500kHz, 1MHzでどうさせてみた図です。  
500kHzくらいで限界って感じですね。  
まともに高速で動かすようには設計指定なので当然の結果ではありますが。高速に動かすには、Wを広くしたり、バランスよくP-FET,N-FETのL,Wを合わせる必要があります。  

- ![measure_inverter_1kHz](images/measure_inverter_1kHz.jpg)
- ![measure_inverter_500kHz](images/measure_inverter_500kHz.jpg)
- ![measure_inverter_1MHz](images/measure_inverter_1MHz.jpg)


### Dラッチ測定
無事に使用通りに動きとなりました。  

- ![measure_d_latch](images/measure_d_latch.jpg)
