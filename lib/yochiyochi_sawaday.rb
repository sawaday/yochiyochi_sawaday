require "yochiyochi_sawaday/version"

module YochiyochiSawaday

  def start
    @words = { "apple"=> "りんご", "dog"=> "犬", "book"=> "本", "milk"=> "牛乳", "library"=> "図書館" }
    @loop_count = 0
    @correct_count = 0
    puts "英単語ゲームスタート(5問)！stopと入力したら中断できます。"
    @words.each do |key,value|
      puts "#{value}は英語で？"

      answer = gets.chomp

      if answer == "stop"
        puts "bye!" 
        break
      elsif answer == key
        puts "正解です！" 
        @correct_count+=1
      else  
        puts "不正解です。。正解は#{key}"
      end   
        @loop_count+=1
    end     

    if @loop_count==0
      return 0
    else  
      puts "あなたの正解率は#{@correct_count*100/@loop_count}パーセントです"
    end   
  end   

  module_function :start
end  
