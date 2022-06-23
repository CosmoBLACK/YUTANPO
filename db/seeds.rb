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

onsens = [
    {name: '玉造温泉', postal_code: '〒699-0201', address: '島根県松江市玉湯町玉造',
    introduction: '『出雲国風土記』『枕草子』にも登場する美肌・姫神の湯です。潤い成分を多く含んだ化粧水のような泉質が特徴で、温泉街には美肌スポットが点在しています。',
    tag_name: '冷え性,末梢循環障害,鬱状態,切り傷,皮膚乾燥症'},
    {name: '湯郷温泉', postal_code: '〒707-0062', address: '岡山県美作市湯郷',
    introduction: '歴史は古く、いまから1200年ほど昔の平安時代、慈覚大円仁法師が白鷺に導かれ発見したと伝えられ、別名「鷺の湯（さぎのゆ）」と呼ばれる全国に知られた名湯です。',
    tag_name: 'リウマチ,消化器病,神経痛,貧血症,婦人病,皮膚病'},
    {name: '宮浜温泉', postal_code: '〒739-0454', address: '広島県廿日市市宮浜温泉',
    introduction: '日本三景の一つとして知られる宮島の対岸にあって国道沿いに位置する宮濱温泉は、宮島だけでなく、広島や岩国の観光拠点にも最適な立地にあります。 また、宮浜温泉前に広がる大野瀬戸は、潮の流れが早く、牡蠣やあさりの産地としても有名です。宮浜温泉は、観光、絶景、グルメを存分に楽しめる温泉地と言えます。',
    tag_name: 'リウマチ,疲労回復,神経痛,婦人病,健康増進,痔疾,関節痛'},
    {name: '三朝温泉', postal_code: '〒682-0123', address: '鳥取県東伯郡三朝町',
    introduction: '三朝温泉は同じ町内にある三徳山と共に、2015年に日本遺産第一号に認定された温泉地です。温泉名の由来は「三つ目の朝を迎えるころには病が消える」ことから、三朝と呼ばれるようになったという説があります。',
    tag_name: 'リウマチ,疲労回復,消化器病,神経痛,婦人病,冷え性,気管支炎,肺気腫,変形性関節症,肩凝り,腰痛,高血圧,糖尿病,痛風,肝臓疾患,胆道疾患,アトピー性皮膚炎,美肌効果'},
    {name: '湯田温泉', postal_code: '〒753-0056', address: '山口県山口市湯田温泉',
    introduction: '湯田温泉はアルカリ性単純温泉で、肌によく馴染みます。一番の特徴は豊富な湯量で、1日に2,000トンもの天然温泉が湧き出ています。 また、湯田温泉の泉温は70℃を超えており、県内の温泉の中では最も高い値を誇っています。起源は、約600年前の室町時代に白狐が傷をいやすのを見て発見された、と伝えられていますが、実はさらに昔の周防国文書にも登場しています。',
    tag_name: '疲労回復,消化器病,神経痛,健康増進,痔疾,関節痛,冷え性,筋肉痛,五十肩,運動麻痺,打ち身,捻挫'},
    {name: 'よさこい温泉', postal_code: '〒781-5703', address: '高知県安芸郡芸西村西分甲',
    introduction: '遠浅の海岸が続く琴ヶ浜と太平洋を見下ろす高台に立つ総合リゾートホテル「土佐ロイヤルホテル」に地下1000ｍから湧いています。高知のよさこい祭にちなみ、「よさこい温泉」と名付けられました。泉質は、体がぽかぽかとよく温まるナトリウム、塩化物泉。他に海洋深層水を利用した露天風呂もあります。',
    tag_name: '疲労回復,神経痛,関節痛,冷え性,筋肉痛,五十肩,打ち身,捻挫'},
    {name: '塩江温泉', postal_code: '〒761-1612', address: '香川県高松市塩江町',
    introduction: '塩江温泉は、開湯の歴史は1300年前まで遡る古湯で、香川県では最大規模の温泉地です。伝説では、奈良時代の高僧、行基によって発見され、空海が万人に湯治を勧めた温泉として知られています。',
    tag_name: 'リウマチ,疲労回復,神経痛,婦人病,健康増進,痔疾,関節痛,冷え性,末梢循環障害,切り傷,肺気腫,高血圧,痛風,アトピー性皮膚炎,美肌効果,筋肉痛,運動麻痺,打ち身,胃腸病'},
    {name: '祖谷温泉', postal_code: '〒778-0165', address: '徳島県三好市池田町',
    introduction: '日本三大秘湯の一つで、谷底に源泉掛流しの露天風呂があり、ケーブルカーで移動します。移動中には、日本三大秘境の一つの祖谷渓の景観が楽しめます。',
    tag_name: 'リウマチ,疲労回復,不眠症,動脈硬化症,慢性皮膚炎,神経痛,婦人病,関節痛,冷え性,鬱状態,切り傷,アトピー性皮膚炎,美肌効果,筋肉痛,打ち身'},
]

onsens.each do |onsen|
  # 一度メンバーをメールアドレスで検索
  onsen_data = Onsen.find_by(name: onsen[:name])
  # 該当メンバーがいなければ、createする
  if onsen_data.nil?
    Onsen.create(
      name: onsen[:name],
      introduction: onsen[:introduction],
      postal_code: onsen[:postal_code],
      address: onsen[:address],
      tag_name: onsen[:tag_name],
      onsen_image: File.open("./app/assets/images/tamatsukuri_onsen.jpg")
    )
  end
end