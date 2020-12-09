def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  days = month_days[month - 1]
  
  if month === 2 && year % 400 === 0
    days += 1
  elsif month === 2 && year % 100 === 0
    days = 28
  elsif month === 2 && year % 4 === 0
    days += 1
  else
    days = days
  end 
  
  return days
end

# 閏年を考慮
# 4で割り切れる年は閏年
# 例外：100で割り切れる年は閏年ではない
# 例外：400で割り切れる年は閏年

puts "入力した西暦と月から日数を表示します"

puts "年を数字で入力してください"
year = gets.to_i

puts "月を入力してください"
month = gets.to_i
  
days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"

# 別解
# def get_days(year, month)
#   month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
#   if month == 2
#     if year % 4 == 0
#       if year % 100 == 0 && year % 400 != 0
#         days = 28
#       else
#         days = 29
#       end
#     else
#       days = 28
#     end
#   else
#     days = month_days[month - 1]
#   end

#   return days
# end