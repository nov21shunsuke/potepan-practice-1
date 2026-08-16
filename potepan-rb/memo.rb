require "csv"

while true
    puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
    memo_type = gets.to_i   # ユーザーの入力値を整数に変換
    break if [1,2].include?(memo_type) 
    puts "1か2を入力してください"
end


if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください"
    memo_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したら Command+D を押します"
    lines = readlines

    CSV.open("#{memo_name}.csv", "w") do |csv|
        lines.each do |line|
            row = line.chomp.split(",")
            csv << row
        end
    end
end

if memo_type == 2
    puts "拡張子を除いたファイル名を入力してください"
    memo_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したら Command+D を押します"
    lines = readlines

    CSV.open("#{memo_name}.csv", "a") do |csv|
        lines.each do |line|
            row = line.chomp.split(",")
            csv << row
        end
    end
end

