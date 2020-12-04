# バイナリーサーチ

def binary_search(array, target)
  head = 0
  tail = array.length - 1
  while head <= tail
    center = (head + tail) / 2
    if array[center] === target
      return puts "#{center + 1}番目です"
    elsif target < array[center]
      tail = center - 1
    else
      head = center + 1
    end
  end
  puts "#{target}は配列内に存在しません"
end

# headとtailで始点と終点を定義
# 目的の値がない場合、始点 <= 終点がfalseになる

array = [1,3,5,6,9,10,13,20,26,31]
puts "配列は#{array}です"
puts "検索したい数字を入力してください"
target = gets.to_i
binary_search(array, target)