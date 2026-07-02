# User Behavior Analysis

## 概要
Google Analytics Sampleデータを用いて、ECサイトにおけるユーザー行動を分析しました。

本分析では、「離脱ページがCV率低下の主要な要因である」という仮説を立て、流入元・デバイス・ブラウザ・ランディングページ・離脱ページを段階的に分析し、最終的にCV率改善のための施策提案まで行っています。

---

## 使用技術

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQL（BigQuery）
- Jupyter Notebook

---

## 使用データ

Google BigQuery Public Dataset

**Google Analytics Sample**

データは分析内容ごとにSQLで抽出し、CSVとして保存したものを使用しています。

---

## 分析の流れ

流入元分析→デバイス分析→ブラウザ分析→ランディングページ分析→離脱ページ分析→施策提案→今後の展望
ランディングページ分析までの内容は、離脱ページ分析で詳しく分析するための、前提条件として分析結果を出しました。

### ① 流入元分析

「流入元によって購入者数に違いがある」という仮説を立て、分析を行いました。
(direct)・google・youtube.comの使用率は合計で91.5%であり、多く購入している流入元は(direct)・google・dfaの3つで96.88%を占めていることが分かりました。
また、youtube.comが流入元のユーザーは購入数がとても少ないことも確認できました。

![流入元分析](images/01_source.png)

---

### ② デバイス分析



---

### ③ ブラウザ分析

主要ブラウザごとの

- 利用者数
- 購入者数
- CV率

を比較しました。

---

### ④ ランディングページ分析

ユーザーが最初に訪れるページを分析し、

- home
- YouTubeブランドページ
- 商品カテゴリページ

などの特徴を整理しました。

---

### ⑤ 離脱ページ分析

本分析のメインテーマです。

以下を分析しました。

- 流入元ごとの離脱率
- ランディングページと離脱ページの関係
- 商品カテゴリごとの閲覧状況

---

### ⑥ 施策提案

分析結果をもとに、

- HomeページのUI改善
- YouTubeブランドページから商品の直接導線追加
- 商品カテゴリ改善

などの施策を提案しました。

---

## 主な分析結果

- (direct)からの流入が最も多い
- YouTube経由は利用者が多いにもかかわらずCV率が低い
- Desktop利用者のCV率が高い
- Mobile × SafariはCV率が低い
- Homeページ・YouTubeページでは離脱が多い
- 商品ページへの導線改善が必要であることが分かった

---

## 今後の展望

今後は提案した施策についてA/Bテストを実施し、

- CV率
- 離脱率

の改善効果を検証する予定です。

継続的な改善サイクルを回すことで、より実践的なデータ分析プロジェクトへ発展させたいと考えています。

---

## フォルダ構成

```
User_Behavior_Analysis
│
├── notebook/
│   └── User_Behavior_Analysis.ipynb
│
├── sql/
│   ├── source.sql
│   ├── device.sql
│   ├── browser.sql
│   ├── landing_page.sql
│   └── exit_page.sql
│
├── data/
│   ├── source.csv
│   ├── device.csv
│   ├── browser.csv
│   └── ...
│
├── images/
│   ├── dashboard.png
│   ├── source_analysis.png
│   ├── device_analysis.png
│   ├── landing_page.png
│   └── exit_page.png
│
└── README.md
```

---

## 分析イメージ

### 流入元分析

![流入元分析](images/01_source.png)

---

### デバイス分析

![デバイス分析](images/02_device.png)

---

### ブラウザ分析

![ブラウザ分析](images/03_browser.png)

---

### ランディングページ分析

![ランディングページ分析](images/04_landing_page.png)

---

### 離脱ページ分析

![離脱ページ分析](images/05_exit_page.png)

---

## Author

GitHub Portfolio

データアナリストを目指して学習中。
Python・SQL・Tableauを用いたデータ分析ポートフォリオを公開しています。
