def janken
  puts "最初はグー、じゃんけん・・・"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  
  player_hand = gets.to_i
  #randメソッドで、指定の整数をランダムに返す
  program_hand = rand(0..2)
  
  puts "-----------------------------"
  jankens = ["グー","チョキ","パー","戦わない"]
  puts "プレーヤー側:#{jankens[player_hand]},
  対戦者側:#{jankens[program_hand]}"
  puts "-----------------------------"
  
  while player_hand > 3
    puts "入力する数字が間違っています"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  end
  
  if player_hand == 3 #戦わない
    puts "じゃんけんゲームを終了します。"
    puts "-----------------------------"
    return false
  end
  
  if player_hand == program_hand
    puts "あいこで・・・"
    return true
    
  elsif (player_hand == 0 && program_hand == 1) ||
        (player_hand == 1 && program_hand == 2) ||
        (player_hand == 2 && program_hand == 0)
      puts "じゃんけん ➡︎ あなたの勝ちです"
      $pass ="win_janken"
      return false
      
  else
      puts "じゃんけん ➡ あなたの負けです"
      $pass = "lose_janken"
      return false
  end
end




def acchimuitehoi
  puts"あっち向いて・・・"
  puts "0(上)1(下)2(左)3(右)"
  
  player_direction= gets.to_i
  program_direction = rand(0..3)
  
  while player_direction > 3
    puts "入力する数字が間違っています"
    puts "0(上)1(下)2(左)3(右)"
  end
    
  puts "ホイ！！!"
  puts "-----------------------------"
  hoi = ["上","下","左","右"]
  puts "プレーヤー側:#{hoi[player_direction]},
  対戦者側:#{hoi[program_direction]}"
  puts "-----------------------------"
  
  if player_direction == program_direction && $pass == "win_janken"
    puts "プレーヤーの勝利！"
    puts "-----------------------------"
    return false
    
  elsif player_direction != program_direction && $pass == "win_janken"
    puts "勝負決まらず・・・じゃんけんに戻ります"
    return true
    
  elsif player_direction == program_direction && $pass == "lose_janken"
    puts "対戦者の勝利！"
    puts "-----------------------------"
    return false
    
  else player_direction != program_direction && $pass == "lose_janken"
    puts "勝負決まらず・・・ジャンケンに戻ります"
    return true
  end
end
  
  
  #ここでtrueにすることによってwhile文の中に入っていける
  next_janken = true
  
  #勝負がつくまでジャンケンとあっち向いてホイをループ
  while next_janken == true
  # どちらかが勝つまでじゃんけん、条件式の評価と関数の実行が同義である
    while next_janken = janken
    end
    #あっち向いてホイをする
    next_janken = acchimuitehoi
  end
