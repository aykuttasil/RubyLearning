class Selamlama
    attr_accessor :names

    def initialize(names = "Default Name")
        @names = names
    end

    def HerkeseMerhaba
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            @names.each do |item| 
                 puts "Merhaha #{item}"
            end
        else
            puts "Merhabaaaa"
        end
    end

    #Herkese hoşçakal de
    def say_bye
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("join")
        # Liste elemanlarını virgülle birleştir
        puts "Goodbye #{@names.join(", ")}.  Come back soon!"
      else
        puts "Goodbye #{@names}.  Come back soon!"
      end
    end
  
end



puts __FILE__  # bu dosyanın ismini verir
puts $0 # bu sınıfı çağıranın ismini verir

# Yani bu durumda eğer bu sınıf direk olarak çağırılırsa bu kod bloğu çalışır
# require ile başka sınıf tarafından  kullanılmaya çalışılır ise bu kod bloğu çalışmaz
if __FILE__ == $0
  mg = Selamlama.new
  mg.HerkeseMerhaba
  mg.say_bye

  # İsmi "Zeke" olarak değiştir
  mg.names = "Zeke"
  mg.HerkeseMerhaba
  mg.say_bye

  # İsmi bir isimler dizisine çevir
  mg.names = ["Albert", "Brenda", "Charles",
    "Dave", "Engelbert"]
  mg.HerkeseMerhaba
  mg.say_bye

  #  nil yap
  mg.names = nil
  mg.HerkeseMerhaba
  mg.say_bye
end

selam = Selamlama.new(["Aykut","Asil"])
selam.HerkeseMerhaba()

selam1 = Selamlama.new(nil)
selam1.HerkeseMerhaba

selam2 = Selamlama.new("Aykut")
selam2.HerkeseMerhaba()



