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
    puts 'Text教材へのCSVデータ投入に成功しました。'
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
    puts 'よくある質問集のCSVデータ投入に成功しました。'
  end
end