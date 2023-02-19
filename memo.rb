require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 puts "１または２を選択してください。"
 
 memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
 
 
 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

if memo_type  == 1
    puts "拡張子を除いたファイル名を入力してください。"
    new_file_name = gets.chomp.to_s
    puts"新規でメモを記入してください。保存するには Ctrl+D を入力。"
    
    #ここでCSVファイルの書き込みをします
    CSV.open("#{new_file_name}.csv","w") do |csv|
    input_new_memo = readlines
    csv << input_new_memo
    end
    
elsif memo_type  == 2
    puts "拡張子を除いたファイル名を入力してください。"
    edit_file_name = gets.chomp.to_s
    puts"既存のメモを編集してください。保存するには Ctrl+D を入力。"
    
    #ここでCSVファイルの書き込みをします
    CSV.open("#{edit_file_name}.csv","a") do |csv|
    input_edit_memo = readlines
    csv << input_edit_memo
    end
        
end
