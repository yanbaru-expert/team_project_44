class ImportCsv
  # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.question_import(path)
    CSV.foreach(path, headers: true) do |row|
      Question.create!(
        genre: row['genre'],
        title: row['title'],
        content: row['content']
      )
    end
    puts 'よくある質問集のCSVデータ投入に成功しました。'
  end
end