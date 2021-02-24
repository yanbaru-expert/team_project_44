# csvファイルを読み込む
require 'csv'
EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

Text.delete_all
CSV.foreach('db/csv_data/text_data.csv', headers: true) do |row|
  Text.create(
    genre: row['genre'],
    title: row['title'],
    content: row['content']
  )
end

Movie.delete_all