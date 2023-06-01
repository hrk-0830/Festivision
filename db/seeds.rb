# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveStorage::AnalyzeJob.queue_adapter = :inline
ActiveStorage::PurgeJob.queue_adapter = :inline

users = User.create!(
  [
    {
      name: "太郎",
      email: "taro@example.com",
      password: "password",
      introduction: "西日本を中心にお祭りやイベントに参加しています。少しでも多くの情報を共有したいです。",
    },
    {
      name: "花子",
      email: "hanako@example.com",
      password: "password",
      introduction: "関東を中心にお祭りやイベントに参加しています。少しでも多くの情報を共有したいです",
    },
    {
      name: "次郎",
      email: "jiro@example.com",
      password: "password",
      introduction: "東北を中心にお祭りやイベントに参加しています。少しでも多くの情報を共有したいです",
    }
  ]
)


Event.create!(
  [
    {name: '青森ねぶた祭り',overview: '青森の夏を彩るねぶた祭りは、巨大なねぶた（山車）が街を練り歩く迫力満点の祭りです。夜にはねぶたがライトアップされ、幻想的な光景が広がります。',start_time: Time.new(2023, 6, 1, 5, 9, 0, '+09:00'),prefecture_status: '青森県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image1.jpg"), filename:"event_image1.jpg"),user_id: users[0][:id]},
    {name: 'さっぽろライラックまつり',overview: '北海道の札幌市で開催されるライラックまつりは、美しいライラックの花が咲き誇る公園で行われます。色とりどりの花々に囲まれながら、ピクニックやライブ演奏を楽しむことができます。',start_time: Time.new(2023, 6, 3, 5, 9, 0, '+09:00'),prefecture_status: '北海道',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image2.jpg"), filename:"event_image2.jpg"),user_id: users[1][:id]},
    {name: 'つつじまつり',overview: '埼玉県のお茶の水百人町公園では、6月になると美しいつつじの花が咲き誇ります。つつじまつりでは、花の見学や茶会、伝統的な舞踊など、日本の文化を楽しむことができます。',start_time: Time.new(2023, 6, 8, 5, 9, 0, '+09:00'),prefecture_status: '埼玉県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image3.jpg"), filename:"event_image3.jpg"),user_id: users[2][:id]},
    {name: 'いわき三大花火大会',overview: '福島県いわき市で開催される花火大会は、夜空を彩る美しい花火が見どころです。迫力ある打ち上げ花火や音楽とのコラボレーションは、心を魅了します。',start_time: Time.new(2023, 6, 12, 5, 9, 0, '+09:00'),prefecture_status: '福島県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image4.jpg"), filename:"event_image4.jpg"),user_id: users[0][:id]},
    {name: 'あいちトリエンナーレ',overview: '愛知県で開催されるあいちトリエンナーレは、現代アートの展示やパフォーマンスが行われる国際的なイベントです。芸術作品との触れ合いを通じて、新たな視点や感動を得ることができます。',start_time: Time.new(2023, 6, 14, 5, 9, 0, '+09:00'),prefecture_status: '愛知県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image5.jpg"), filename:"event_image5.jpg"),user_id: users[1][:id]},
    {name: '京都五山送り火',overview: '京都で行われる五山送り火は、夏の風物詩として知られています。五つの山に燃える巨大な火が点火され、夜空に幻想的な光景を作り出します。',start_time: Time.new(2023, 6, 16, 5, 9, 0, '+09:00'),prefecture_status: '京都府',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image1.jpg"), filename:"event_image1.jpg"),user_id: users[2][:id]},
    {name: '南三陸ボンゾリ祭',overview: '宮城県南三陸町で開催されるボンゾリ祭は、地元の漁師たちが安全な漁を祈願して行う祭りです。神聖な儀式や伝統的な舞踊、美味しい海産物の屋台などが楽しめます。地元の人々の熱いパフォーマンスや、夜空に舞い上がる花火も見逃せません。',start_time: Time.new(2023, 6, 18, 5, 9, 0, '+09:00'),prefecture_status: '宮城県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image2.jpg"), filename:"event_image2.jpg"),user_id: users[0][:id]},
    {name: '富士山本宮浅間大社例大祭',overview: '滋賀県の琵琶湖で開催される大規模な花火大会は、日本一の打ち上げ数を誇ります。湖面に映る美しい花火の光景は、夏の夜空を一層華やかに彩ります。',start_time: Time.new(2023, 6, 22, 5, 9, 0, '+09:00'),prefecture_status: '山梨県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image3.jpg"), filename:"event_image3.jpg"),user_id: users[1][:id]},
    {name: 'うじゃっかり浜松まつり',overview: '栃木県宇都宮市で行われるとちぎ花火大会は、打ち上げ花火の迫力と美しさが魅力です。地元の花火師たちが競演し、見応えのある花火ショーが繰り広げられます。',start_time: Time.new(2023, 6, 26, 5, 9, 0, '+09:00'),prefecture_status: '静岡県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image4.jpg"), filename:"event_image4.jpg"),user_id: users[2][:id]},
    {name: '草津温泉花火大会',overview: '山形県の鳴子温泉では、温泉街を舞台に美しい花火大会が開催されます。夜空に昇る花火と、温泉地ならではの雰囲気が融合し、幻想的な夜を演出します。',start_time: Time.new(2023, 6, 28, 5, 9, 0, '+09:00'),prefecture_status: '群馬県',image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/event_image5.jpg"), filename:"event_image5.jpg"),user_id: users[0][:id]},
  ]
)rai