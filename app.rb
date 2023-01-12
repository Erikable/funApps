=begin
Good morning! Here's your coding interview problem for today.
This problem was asked by Facebook.
Given a string of round, curly, and square open and closing brackets,
 return whether the brackets are balanced (well-formed).
For example, given the string "([])[]({})", you should return true.
Given the string "([)]" or "((()", you should return false.
=end

puts 'write brackets to check'
str = gets.strip

@arr = []
@opened_chars = ['(', '[', '{']

def balance?(check_it)
  splited_input = check_it.split(%r{\s*})

  splited_input.each do |element|
    if @opened_chars.include?(element)
      @arr << element
    else
      if @arr.empty?
        break
      end
      prev_arr_element = @arr.pop
      if element == ')'
        if prev_arr_element != '('
          return false
        end
      end
      if element == ']'
        if prev_arr_element != '['
          return false
        end
      end
      if element == '}'
        if prev_arr_element != '{'
          return false
        end
      end
    end
  end
  @arr.empty?
end

puts balance?(str) ? "Balanced" : "Not balanced"



