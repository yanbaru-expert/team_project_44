EMAIL = 'test@example.com'
PASSWORD = 'password'

ADMIN_EMAIL = "admin@example.com"
ADMIN_PASSWORD = "password"

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
CSV.foreach('db/csv_data/movie_data.csv', headers: true) do |row|
  Movie.create(
    genre: row['genre'],
    title: row['title'],
    url: row['url']
  )
end

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin_user|
  admin_user.password = ADMIN_PASSWORD
  admin_user.password_confirmation = ADMIN_PASSWORD
  puts "管理者ユーザーの初期データのインポートに成功しました。"
end