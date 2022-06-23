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
    tag_name: '冷え性,末梢循環障害,うつ状態,きりきず,皮膚乾燥症'}
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