class ImportCsv
  # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.text_import(path)
    CSV.foreach(path, headers: true) do |row|
      Text.create!(
        genre: row['genre'],
        title: row['title'],
        content: row['content']
      )
    end
    puts 'TextへのCSVデータ投入に成功しました。'
  end

  def self.movie_import(path)
    CSV.foreach(path, headers: true) do |row|
      Movie.create!(
        genre: row['genre'],
        title: row['title'],
        url: row['url']
      )
    end
    puts 'MovieへのCSVデータ投入に成功しました。'
  end

  def self.question_import(path)
    CSV.foreach(path, headers: true) do |row|
      Question.create!(
        genre: row['genre'],
        title: row['title'],
        content: row['content'],
        answer: row['answer']
      )
    end
    puts 'よくある質問集へのCSVデータ投入に成功しました。'
  end

  def self.post_import(path)
    CSV.foreach(path, headers: true) do |row|
      Post.create!(
        text_id: row['text_id'],
        movie_id: row['movie_id']
      )
    end
    puts 'PostへのCSVデータ投入に成功しました。'
  end
end