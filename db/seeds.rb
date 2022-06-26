# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
onsen = Onsen.create!(
  name: '玉造温泉',
  postal_code: '〒699-0201',
  address: '島根県松江市玉湯町玉造',
  introduction: '『出雲国風土記』『枕草子』にも登場する美肌・姫神の湯です。潤い成分を多く含んだ化粧水のような泉質が特徴で、温泉街には美肌スポットが点在しています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/tamatsukuri_onsen.jpg')),filename: 'tamatsukuri_onsen.jpg')

onsen = Onsen.create!(
  name: '湯郷温泉',
  postal_code: '〒707-0062',
  address: '岡山県美作市湯郷',
  introduction: '歴史は古く、いまから1200年ほど昔の平安時代、慈覚大円仁法師が白鷺に導かれ発見したと伝えられ、別名「鷺の湯（さぎのゆ）」と呼ばれる全国に知られた名湯です。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/yunogo_onsen.jpg')),filename: 'yunogo_onsen.jpg')

onsen = Onsen.create!(
  name: '宮浜温泉',
  postal_code: '〒739-0454',
  address: '広島県廿日市市宮浜温泉',
  introduction: '日本三景の一つである宮島の対岸にあって国道沿いに位置する宮浜温泉は、宮島だけでなく、広島や岩国の観光拠点にも最適な立地にあります。 また、宮浜温泉前に広がる大野瀬戸は、潮の流れが早く、牡蠣やあさりの産地としても有名です。宮浜温泉は、観光、絶景、グルメを存分に楽しめる温泉地と言えます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/miyahama_onsen.jpg')),filename: 'miyahama_onsen.jpg')

onsen = Onsen.create!(
  name: '三朝温泉',
  postal_code: '〒682-0123',
  address: '鳥取県東伯郡三朝町',
  introduction: '三朝温泉は同じ町内にある三徳山と共に、2015年に日本遺産第一号に認定された温泉地です。温泉名の由来は「三つ目の朝を迎えるころには病が消える」ことから、三朝と呼ばれるようになったという説があります。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/misasa_onsen.jpg')),filename: 'misasa_onsen.jpg')

onsen = Onsen.create!(
  name: '湯田温泉',
  postal_code: '〒753-0056',
  address: '山口県山口市湯田温泉',
  introduction: '湯田温泉の一番の特徴は豊富な湯量で、1日に2,000トンもの天然温泉が湧き出ています。 また、泉温は70℃を超えており、県内の温泉の中では最も高い値を誇っています。約600年前の室町時代に白狐が傷をいやすのを見て発見された、と伝えられていますが、実はさらに昔の周防国文書にも登場しています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/yuda_onsen.jpg')),filename: 'yuda_onsen.jpg')

onsen = Onsen.create!(
  name: 'よさこい温泉',
  postal_code: '〒781-5703',
  address: '高知県安芸郡芸西村西分甲',
  introduction: '遠浅の海岸が続く琴ヶ浜と太平洋を見下ろす高台に立つ総合リゾートホテル「土佐ロイヤルホテル」に地下1000ｍから湧いています。高知のよさこい祭にちなみ、「よさこい温泉」と名付けられました。他に海洋深層水を利用した露天風呂もあります。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/yosakoi_onsen.jpg')),filename: 'yosakoi_onsen.jpg')

onsen = Onsen.create!(
  name: '塩江温泉',
  postal_code: '〒761-1612',
  address: '香川県高松市塩江町',
  introduction: '塩江温泉は、開湯の歴史は1300年前まで遡る古湯で、香川県では最大規模の温泉地です。伝説では、奈良時代の高僧、行基によって発見され、空海が万人に湯治を勧めた温泉として知られています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/shionoe_onsen.jpg')),filename: 'shionoe_onsen.jpg')

onsen = Onsen.create!(
  name: '祖谷温泉',
  postal_code: '〒778-0165',
  address: '徳島県三好市池田町',
  introduction: '日本三大秘湯の一つで、谷底に源泉掛流しの露天風呂があり、ケーブルカーで移動します。移動中には、日本三大秘境の一つの祖谷渓の景観が楽しめます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/iya_onsen.jpg')),filename: 'iya_onsen.jpg')

onsen = Onsen.create!(
  name: '鈍川温泉',
  postal_code: '〒794-0121',
  address: '愛媛県今治市玉川町鈍川',
  introduction: '鈍川温泉は、「21世紀に残したい四国の自然100選」にも入選した鈍川渓谷の一角にあります。湧出は遠く平安時代までさかのぼる歴史を持ち、ラドン含有量が高いアルカリ性単純泉でph9.9、肌触りが良くなめらかで、美肌効果の高い温泉です。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/nibukawa_onsen.jpg')),filename: 'nibukawa_onsen.jpg')

onsen = Onsen.create!(
  name: '由布院温泉',
  postal_code: '〒879-5102',
  address: '大分県由布市湯布院町川上',
  introduction: '岳本・石松・八山・乙丸等の諸温泉からなる由布院温泉は、約９００もの源泉数（日本第二位）と毎分３８６００Ｌの湧出量（日本第三位）を誇っており、「湯布院温泉」の名で国民保養温泉地に指定されています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/yufuin_onsen.jpg')),filename: 'yufuin_onsen.jpg')