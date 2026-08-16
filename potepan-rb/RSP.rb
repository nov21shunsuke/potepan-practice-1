
#入力値 → 手 （0→グー、1→チョキ、2→パー、3→不明）
def numToHand(num)
    case num
    when 0
        "グー"
    when 1
        "チョキ"
    when 2
        "パー"
    else
        "不明"
    end
end

#じゃんけんの勝敗を返す　返り値...0→あいこ  1→自分の勝ち  2→相手の勝ち
def rockScissorsPaper(me:, opponent:)
    
    if me == opponent
        0
    elsif (me == 0 && opponent == 1) || (me == 1 && opponent == 2) ||  (me == 2 && opponent == 0)
        1
    else
        2
    end
end

#入力値 → 方向　(0→上, 1→下, 2→左, 3→右)
def numToDir(num)
    case num
    when 0
        "上"
    when 1
        "下"
    when 2
        "左"
    else
        "右"
    end
end


while true
    puts "じゃんけん..."
    puts "0:グー　1:チョキ　2:パー　3:戦わない"

    while true
        while true
            myHand = gets.to_i
            break if [0,1,2,3].include?(myHand) 
            puts "0~3の数字を入力してください"
            puts "じゃんけん..."
            puts "0:グー　1:チョキ　2:パー　3:戦わない"
        end
        
        return if myHand == 3
        oppoHand = rand(3) 
        rspWinner = rockScissorsPaper(me: myHand, opponent: oppoHand) 

        puts("ホイ！")
        puts "---------------"
        puts "あなた：#{numToHand(myHand)}を出しました"
        puts "相手：#{numToHand(oppoHand)}を出しました"
        puts "---------------"

        break if rspWinner != 0
        puts "あいこで....."
        puts "0:グー　1:チョキ　2:パー　3:戦わない"
    end


    puts "あっち向いて〜"
    puts "0（上）1（下）2（左）3（右）"

    myDir = gets.to_i
    oppoDir = rand(4)  

    puts("ホイ！")
    puts "---------------"
    puts "あなた：#{numToDir(myDir)}"
    puts "相手：#{numToDir(oppoDir)}"
    puts "---------------"

    break if myDir == oppoDir
end

if rspWinner == 1
    puts "あなたの勝ちです"
else
    puts "相手の勝ちです"
end