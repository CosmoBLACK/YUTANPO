# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'admin@admin',
  password: '777777'
)

members = [
  {name: 'tester', email: 'test@test', password: 'testing', password_confirmation: 'testing'},
  {name: 'shimei', email: 'futabatei@test', password: 'ukigumo', password_confirmation: 'ukigumo'},
  {name: 'ogai', email: 'mori@test', password: 'maihime', password_confirmation: 'maihime'},
  {name: 'rohan', email: 'koda@test', password: 'gojunoto', password_confirmation: 'gojunoto'},
  {name: 'ichiyo', email: 'higuchi@test', password: 'takekurabe', password_confirmation: 'takekurabe'},
  {name: 'koyo', email: 'ozaki@test', password: 'konjikiyasya', password_confirmation: 'konjikiyasya'},
  {name: 'doppo', email: 'kunikida@test', password: 'musashino', password_confirmation: 'musashino'},
  {name: 'roka', email: 'tokutomi@test', password: 'hototogisu', password_confirmation: 'hototogisu'},
  {name: 'kyoka', email: 'izumi@test', password: 'koyahijiri', password_confirmation: 'koyahijiri'},
  {name: 'kafu', email: 'nagai@test', password: 'tsuyunoatosaki', password_confirmation: 'tsuyunoatosaki'},
  {name: 'soseki', email: 'natsume@test', password: 'kokoro', password_confirmation: 'kokoro'},
  {name: 'toson', email: 'shimazaki@test', password: 'yoakemae', password_confirmation: 'yoakemae'},
  {name: 'katai', email: 'tayama@test', password: 'inakakyoshi', password_confirmation: 'inakakyoshi'},
  {name: 'naoya', email: 'shiga@test', password: 'anyakoro', password_confirmation: 'anyakoro'},
  {name: 'junichiro', email: 'tanizaki@test', password: 'syunkinsyo', password_confirmation: 'syunkinsyo'},
  {name: 'ryunosuke', email: 'akutagawa@test', password: 'jigokuhen', password_confirmation: 'jigokuhen'},
  {name: 'saneatsu', email: 'mushakoji@test', password: 'aitoshi', password_confirmation: 'aitoshi'},
  {name: 'kansuke', email: 'naka@test', password: 'ginnosaji', password_confirmation: 'ginnosaji'},
  {name: 'yasunari', email: 'kawabata@test', password: 'yukiguni', password_confirmation: 'yukiguni'}
]

members.each do |member|
  # 一度メンバーをメールアドレスで検索
  member_data = Member.find_by(email: member[:email])
  # 該当メンバーがいなければ、createする
  if member_data.nil?
    Member.create(
      name: member[:name],
      email: member[:email],
      password: member[:password],
      password_confirmation: member[:password_confirmation]
    )
  end
end

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

onsen = Onsen.create!(
  name: '原鶴温泉',
  postal_code: '〒838-1521',
  address: '福岡県朝倉市杷木町志波',
  introduction: '福岡県と大分県の県境に位置する原鶴温泉は、博多の奥座敷とも呼ばれる温泉地です。江戸時代には街道の宿場として賑わった久喜宮宿と志波宿の間に位置し、湯治場として多くの人から親しまれてきました。現在、福岡県内屈指の湧出量と源泉数を誇る温泉地となっています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/harazuru_onsen.jpg')),filename: 'harazuru_onsen.jpg')

onsen = Onsen.create!(
  name: '嬉野温泉',
  postal_code: '〒843-0301',
  address: '佐賀県嬉野市嬉野町大字下宿',
  introduction: '嬉野温泉は「日本三大美肌の湯」の一つに数えられる古湯です。神功皇后が征西の帰途に立ち寄られ、この地に羽根を浸していた白鶴が元気に飛び立つのをご覧になったため、試しに負傷した兵士を入れてみると傷が癒えたことから、皇后が「あな、うれしいの」と言われたことが、地名の起源とされています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/ureshino_onsen.jpg')),filename: 'ureshino_onsen.jpg')

onsen = Onsen.create!(
  name: '雲仙温泉',
  postal_code: '〒854-0621',
  address: '長崎県雲仙市小浜町雲仙',
  introduction: '温泉名にある「雲仙」は、雲仙岳という火山から名付けられています。人の手が加えられていない四季折々の風景を楽しむことができ、国立公園にも認定されています。また、元々は「雲仙」と書いて「おんせん」と呼んだともいわれています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/unzen_onsen.jpg')),filename: 'unzen_onsen.jpg')

onsen = Onsen.create!(
  name: '黒川温泉',
  postal_code: '〒869-2402',
  address: '熊本県阿蘇郡南小国町満願寺黒川',
  introduction: '熊本県と大分県の県境に位置する黒川温泉は、豊かな緑に囲まれた温泉郷です。その美しい自然やシックでロマンチックな旅館など、落ち着いた魅力にあふれた温泉街は全国的に有名です。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/kurokawa_onsen.jpg')),filename: 'kurokawa_onsen.jpg')

onsen = Onsen.create!(
  name: '青島温泉',
  postal_code: '〒889-2162',
  address: '宮崎県宮崎市青島',
  introduction: '南九州有数の観光地であり、江戸時代には飫肥(おび)藩の殿様が入湯したことから、地元では別名は殿湯と呼ばれている。湯はぬめりがあって肌ざわりが優しく、数ある効能の中でも特に美肌効果が高いと評判です。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/aoshima_onsen.jpg')),filename: 'aoshima_onsen.jpg')

onsen = Onsen.create!(
  name: '霧島温泉',
  postal_code: '〒899-6603',
  address: '鹿児島県霧島市牧園町高千穂',
  introduction: '新湯・林田・硫黄谷等の諸温泉からなる霧島温泉は、坂本龍馬も新婚旅行で訪れたとされる温泉郷です。霧島神宮周辺に広がって神秘的な雰囲気を出しており、国立公園にも指定されています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/kirishima_onsen.jpg')),filename: 'kirishima_onsen.jpg')

onsen = Onsen.create!(
  name: 'シギラ黄金温泉',
  postal_code: '〒906-0000',
  address: '沖縄県宮古島市上野新里',
  introduction: '宮古一のリゾート地にある温泉施設であり、高級な雰囲気が感じられます。露天風呂や展望風呂のほかに、水着を着て入るジャングルプール、フィットネスジムやプライベートルームも備わっています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/shigira_ogon_onsen.jpg')),filename: 'shigira_ogon_onsen.jpg')

onsen = Onsen.create!(
  name: '有馬温泉',
  postal_code: '〒651-1401',
  address: '兵庫県神戸市北区有馬町',
  introduction: '日本三古泉、日本三名泉に数えられ、行基や豊臣秀吉など多くの歴史上の人物が訪れている。鉄分と塩分を含む褐色の「金泉」と、美肌効果で女性人気のある無色透明の「銀泉」の異なる泉質を持つ湯が楽しめます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/arima_onsen.jpg')),filename: 'arima_onsen.jpg')

onsen = Onsen.create!(
  name: '犬鳴山温泉',
  postal_code: '〒598-0023',
  address: '大阪府泉佐野市大木',
  introduction: '大阪府内唯一の温泉郷で、とろりとした肌ざわりのお湯が特徴です。古くから門前町として栄えており、南北朝時代には戦に敗れた兵士が傷を癒したという伝説も残っています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/inunakiyama_onsen.jpg')),filename: 'inunakiyama_onsen.jpg')

onsen = Onsen.create!(
  name: '嵐山温泉',
  postal_code: '〒616-0001',
  address: '京都府京都市西京区嵐山上河原町',
  introduction: '嵐山温泉は、開湯からの歴史は浅く、2004年に温泉を掘り起こしたところから始まっています。嵐山は現在日本のさくら・紅葉の名所100選として選ばれており、温泉も含め多くの人々を迎え入れる観光地としての立場を確立しています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/arashiyama_onsen.jpg')),filename: 'arashiyama_onsen.jpg')

onsen = Onsen.create!(
  name: '白浜温泉',
  postal_code: '〒649-2200',
  address: '和歌山県西牟婁郡白浜町',
  introduction: '日本三古泉の一つに数えられ、日本書紀に当時の歴代天皇が訪れたことが記載されています。温泉街には、シックで家庭的な雰囲気の宿から全室オーシャンビューが楽しめるリゾートホテルまで、多彩な宿泊施設が建ち並びます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/shirahama_onsen.jpg')),filename: 'shirahama_onsen.jpg')

onsen = Onsen.create!(
  name: '十津川温泉',
  postal_code: '〒637-1554',
  address: '奈良県吉野郡十津川村平谷',
  introduction: '十津川温泉は、元禄年間に炭焼き職人が見つけた冬でも湯冷めしない温泉で、日本百名湯にも選出されています。また、湯泉地温泉、上湯温泉と合わせて十津川温泉郷と総称されます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/totsukawa_onsen.jpg')),filename: 'totsukawa_onsen.jpg')

onsen = Onsen.create!(
  name: '湯の山温泉',
  postal_code: '〒510-1233',
  address: '三重県三重郡菰野町菰野',
  introduction: '湯の山温泉は、718年に発見された古湯で別名鹿の湯とも言います。鈴鹿山脈にある御在所岳の中腹の標高400mにあって、温泉街からロープウェイで向かいます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/yunoyama_onsen.jpg')),filename: 'yunoyama_onsen.jpg')

onsen = Onsen.create!(
  name: 'おごと温泉',
  postal_code: '〒520-0101',
  address: '滋賀県大津市雄琴',
  introduction: 'おごと温泉は、比叡山延暦寺の開祖として知られる伝教大師が開いたと言い伝えられています。琵琶湖に沿って宿が立ち並び、宿からは湖の美しい景観を一望できるため、多くの観光客で賑わっています。また、日の出を見ることができる温泉としても知られ、人気を集めています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/ogoto_onsen.jpg')),filename: 'ogoto_onsen.jpg')

onsen = Onsen.create!(
  name: '三国温泉',
  postal_code: '〒913-0056',
  address: '福井県坂井市三国町宿',
  introduction: '1997年に掘削し発見されたまだ歴史の浅い温泉です。三国町にある温泉の総称で、町内に東尋坊温泉、三国温泉1号泉、三国温泉4号泉の3つの主な源泉が分散しています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/mikuni_onsen.jpg')),filename: 'mikuni_onsen.jpg')

onsen = Onsen.create!(
  name: '下呂温泉',
  postal_code: '〒',
  address: '岐阜県益田郡下呂町',
  introduction: '日本三名泉の一つ。下呂温泉は平安時代の中頃に発見された古湯で、室町時代の禅僧・万里集九や、江戸時代の儒学者・林羅山も名泉と褒め称えています。美肌効果もある湯で、お得な「湯めぐり手形」もあり、情緒ある温泉街や河原を散策しながら湯巡りを楽しめます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/gero_onsen.jpg')),filename: 'gero_onsen.jpg')

onsen = Onsen.create!(
  name: '和倉温泉',
  postal_code: '〒926-0175',
  address: '石川県七尾市和倉町',
  introduction: '高級温泉街として知られる和倉温泉は、日本でも珍しい海から湧き出している温泉です。開湯は今から約1200年前とされ、1611年には加賀藩2代藩主・前田利長が和倉温泉の湯で腫れ物を治したことから評判が高まりました。そこから湯治客の来訪も多くなり、明治時代に数々の皇族も来訪されました'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/wakura_onsen.jpg')),filename: 'wakura_onsen.jpg')

onsen = Onsen.create!(
  name: '三谷温泉',
  postal_code: '〒443-0021',
  address: '愛知県蒲郡市三谷町',
  introduction: '三谷温泉には、温泉宿が大小様々で、どの宿も三河湾を展望できる好立地です。奈良時代の高僧・行基が発見したとされ長い歴史があり、現在ではマリンリゾートやレジャーの拠点として親しまれています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/miya_onsen.jpg')),filename: 'miya_onsen.jpg')

onsen = Onsen.create!(
  name: '宇奈月温泉',
  postal_code: '〒938-0282',
  address: '富山県黒部市宇奈月温泉',
  introduction: '宇奈月温泉は、黒部川の清流と美しい渓谷が広がる自然豊かな温泉地で、その湯は日本一の透明度ともいわれています。周辺には壮大な自然を舞台にしたレジャーが充実しており、国内外から幅広い世代の観光客が訪れます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/unazuki_onsen.jpg')),filename: 'unazuki_onsen.jpg')

onsen = Onsen.create!(
  name: '昼神温泉',
  postal_code: '〒395-0304',
  address: '長野県下伊那郡阿智村智里',
  introduction: '昼神温泉は、環境省が認定する「星が最も輝いて見える場所」の第一位に認定された温泉地です。四季折々の雄大な自然に囲まれ、美人の湯としても評判が高く、様々な魅力にあふれています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/hirugami_onsen.jpg')),filename: 'hirugami_onsen.jpg')

onsen = Onsen.create!(
  name: '熱海温泉',
  postal_code: '〒413-0033',
  address: '静岡県熱海市熱海',
  introduction: '熱海温泉は、伊豆半島の北東端に位置し、海のレジャーも満喫できる温泉地です。徳川家康が好んで逗留し江戸にも取り寄せていたと言われる名湯で、この温泉の配達は後に「御汲湯」として代々の将軍に受け継がれていました。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/atami_onsen.jpg')),filename: 'atami_onsen.jpg')

onsen = Onsen.create!(
  name: '石和温泉',
  postal_code: '〒406-0024',
  address: '山梨県笛吹市石和町川中島',
  introduction: '石和温泉は、緑豊かな美しい景観が広がる温泉郷で、季節の果物や新鮮な山の幸など魅力があふれています。1961年に湧出し、1987年には「新日本観光百選」で全国3位にも選ばれています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/isawa_onsen.jpg')),filename: 'isawa_onsen.jpg')

onsen = Onsen.create!(
  name: '越後湯沢温泉',
  postal_code: '〒949-6101',
  address: '新潟県南魚沼郡湯沢町湯沢',
  introduction: '川端康成の小説「雪国」の舞台となった温泉地。歴史も古く、約800年前に新発田藩士がこの地に野宿をしに入り、湯ノ沢川の奥で偶然発見したことことが始まりとされています。現在では温泉旅館・ホテルが温泉街を形成し、年間を通して多くの温泉観光客が訪れています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/echigoyuzawa_onsen.jpg')),filename: 'echigoyuzawa_onsen.jpg')

onsen = Onsen.create!(
  name: '箱根湯本温泉',
  postal_code: '〒250-0311',
  address: '神奈川県足柄下郡箱根町湯本',
  introduction: '湯坂山の麓で自然湧出する湯本温泉は、開湯は奈良時代とされ、箱根温泉郷の中で最古の温泉です。一日に約8000tもの豊富な湯量を誇り、宿数も温泉郷の中で最も多く、一年を通して観光客で賑わっています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/hakoneyumoto_onsen.jpg')),filename: 'hakoneyumoto_onsen.jpg')

onsen = Onsen.create!(
  name: '八丈島温泉',
  postal_code: '〒100-1622',
  address: '東京都八丈島八丈町末吉',
  introduction: '八丈島温泉は八丈島にある温泉の総称です。八丈島には温泉施設が7箇所あり、絶景の露天風呂温泉、檜造りの心地よい温泉、秘境の佇まいの温泉、オーシャンビューの足湯温泉など、趣のある温泉が楽しめます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/hachijojima_onsen.jpg')),filename: 'hachijojima_onsen.jpg')

onsen = Onsen.create!(
  name: '秩父温泉',
  postal_code: '〒368-0051',
  address: '埼玉県秩父市中村町',
  introduction: '秩父温泉とは埼玉県の北西部、秩父地域に位置する温泉の総称です。平安時代中期の豪族がこの地を訪れた際に傷を癒したという伝説もあり、その湯水は化粧水のような肌触りで美肌の湯としても評判です。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/chichibu_onsen.jpg')),filename: 'chichibu_onsen.jpg')

onsen = Onsen.create!(
  name: '草津温泉',
  postal_code: '〒377-1711',
  address: '群馬県吾妻郡草津町草津',
  introduction: '全て自然に湧出している自噴泉で、日本武尊や行基、源頼朝の開湯伝説をもち、日本三名泉の一つに数えられる古湯です。日本最大の湯量と優れた治癒効能を誇り、恋の病以外は全て効くと言い伝えられています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/kusatsu_onsen.jpg')),filename: 'kusatsu_onsen.jpg')

onsen = Onsen.create!(
  name: '犬吠埼温泉',
  postal_code: '〒288-0012',
  address: '千葉県銚子市犬吠埼',
  introduction: '1997年に開湯した歴史は浅い温泉ですが、関東で一番早く日の出を見られる岬として有名で、富士山頂と離島を除けば日本で一番早く初日の出を拝むことができます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/inubosaki_onsen.jpg')),filename: 'inubosaki_onsen.jpg')

onsen = Onsen.create!(
  name: '袋田温泉',
  postal_code: '〒319-3523',
  address: '茨城県久慈郡大子町袋田',
  introduction: '日本三大瀑布「袋田の滝」に近く、豊かな自然を満喫できる温泉です。開湯は平安時代までさかのぼり、田から湧き出たことから「田毎の湯」とも呼ばれていました。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/fukuroda_onsen.jpg')),filename: 'fukuroda_onsen.jpg')

onsen = Onsen.create!(
  name: '鬼怒川温泉',
  postal_code: '〒321-2522',
  address: '栃木県日光市鬼怒川温泉大原',
  introduction: '起源は江戸時代までさかのぼり、日光詣での大名や僧侶の湯治湯として親しまれ、明治以降に一般開放された経緯があります。鬼怒川沿いに温泉旅館やホテルなどが立ち並び、テーマパークなどレジャー施設も充実しています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/kinugawa_onsen.jpg')),filename: 'kinugawa_onsen.jpg')

onsen = Onsen.create!(
  name: '会津東山温泉',
  postal_code: '〒965-0814',
  address: '福島県会津若松市東山町湯本',
  introduction: '奥羽三楽郷の一つで、周囲を越後山脈や奥羽山脈などに囲まれています。伝承では奈良時代に行基が三本足の烏に導かれて発見したとされています。江戸時代には会津藩の湯治場として栄えたなごりから、温泉街には名所旧跡も多く、昔ながらの風情を感じられます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/aizuhigashiyama_onsen.jpg')),filename: 'aizuhigashiyama_onsen.jpg')

onsen = Onsen.create!(
  name: '銀山温泉',
  postal_code: '〒999-4333',
  address: '山形県尾花沢市銀山新畑',
  introduction: '江戸時代に栄えた「延沢銀山」の名称に由来する温泉で、細かな湯花が混じった乳白色の湯を楽しめます。また、銀山川の両岸に沿って、大正末期から昭和初期に建てられた洋風木造多層の旅館がずらりと軒を連ねる独特の景色には風情を感じられます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/ginzan_onsen.jpg')),filename: 'ginzan_onsen.jpg')

onsen = Onsen.create!(
  name: '鳴子温泉',
  postal_code: '〒989-6100',
  address: '宮城県大崎市鳴子温泉',
  introduction: '平安時代に鳥谷ヶ森が爆発して熱湯が噴出して「鳴郷の湯」と名づけられたことが起源とされています。珍しいことに、日本にある11の泉質のうち９種類が鳴子温泉郷に集まっており、多彩な泉質を楽しむことができます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/naruko_onsen.jpg')),filename: 'naruko_onsen.jpg')

onsen = Onsen.create!(
  name: '大沢温泉',
  postal_code: '〒025-0244',
  address: '岩手県花巻市湯口大沢',
  introduction: '花巻市に位置する大沢温泉は、奥羽山脈、北上山地の山並みが連なる豊かな自然に囲まれています。豊沢川のすぐ脇にある露天風呂では、川のせせらぎを聞きながら、四季折々の自然の風景を堪能でき、自然を五感で感じられます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/osawa_onsen.jpg')),filename: 'osawa_onsen.jpg')

onsen = Onsen.create!(
  name: '玉川温泉',
  postal_code: '〒014-1205',
  address: '秋田県仙北市田沢湖玉川渋黒沢',
  introduction: '玉川温泉は、日本一の湧出量・強酸性を誇る国内屈指の温泉です。水質の改善を繰り返し、明治時代以降に湯治場として発展していきました。また、周辺にある岩盤から発する地熱によって天然の岩盤浴も体験できます。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/tamagawa_onsen.jpg')),filename: 'tamagawa_onsen.jpg')

onsen = Onsen.create!(
  name: '浅虫温泉',
  postal_code: '〒039-3501',
  address: '青森県青森市浅虫蛍谷',
  introduction: '平安時代に円仁により発見され、法然により万人に勧められた歴史ある温泉です。街には老舗旅館が立ち並ぶほか、観光スポットも充実しており、温泉とレジャーが楽しめる観光地として賑わっています。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/asamushi_onsen.jpg')),filename: 'asamushi_onsen.jpg')

onsen = Onsen.create!(
  name: '登別温泉',
  postal_code: '〒059-0551',
  address: '北海道登別市登別温泉町',
  introduction: '北海道で最も泉質（9種類）や湯量（1日1万t）が豊富な温泉です。かつてはアイヌ民族の湯治場で、江戸時代に存在を認知され、日露戦争で傷病兵の保養地になったことから有名になりました。付近にある地獄谷の煮えたぎる景色は迫力があります。'
)
onsen.onsen_image.attach(io: File.open(Rails.root.join('app/assets/images/noboribetsu_onsen.jpg')),filename: 'noboribetsu_onsen.jpg')