# 数字を大字に変換
def num_to_kanji(i)
  if i < 1 
    return "error"
  end
  kanjis = ["壱","弐","参","四","五","六","七","八","九"]
  i = i - 1
  return kanjis[i]
end

# 千の位、百の位、十の位、一の位、それぞれに分けていく。
def num_to_kanji_4(i)
  tmp = i
  i_1000 = tmp / 1000
  tmp    = tmp % 1000

  i_100 = tmp / 100
  tmp   = tmp % 100

  i_10 = tmp / 10
  i_1  = tmp % 10
  

# それぞれ振り分けられた数の横に数字の位をつける
  kanji = ""
  if i_1000 >= 1 
    i_1000 = num_to_kanji(i_1000)
    kanji  = kanji + i_1000 + "千"  
  end
  if i_100 >= 1
    i_100  = num_to_kanji(i_100)
    kanji  = kanji + i_100 + "百"
  end
  if i_10 >= 1
    i_10   = num_to_kanji(i_10)
    kanji  = kanji + i_10 + "拾"
  end 
  if i_1 >= 1
    i_1    = num_to_kanji(i_1)
    kanji  = kanji + i_1 
  end
  return kanji
end  
puts "Please select language"
lang = gets
if lang == "ja"
  puts "1から9999の数字を入力してエンターキーを押してください"
elsif lang == "ch"
  puts "请输入从1到9999之间的数字，然后按输入键"
elsif lang == "th"
  puts "โปรดป้อนตัวเลขระหว่าง 1 ถึง 9999และกดปุ่ม Enter"
end
x = gets.to_i
y = num_to_kanji_4(x)
puts y
