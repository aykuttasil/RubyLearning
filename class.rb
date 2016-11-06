class MyClass

    def initialize(ad = "Aykut")
        @ad = ad
    end

    def Merhaba
        puts "Merhaba #{@ad}"
    end

    def GuleGule
        puts "Güle güle #{@ad}"
    end
end

sinif  = MyClass.new("Aykut")
sinif.Merhaba
sinif.GuleGule
puts sinif.respond_to?("mss") # sinifin mss isimli bir methodu var mı ?
puts sinif.respond_to?("GuleGule")

# puts MyClass.instance_methods # Sınıfa ait tüm methodları listeler
# puts MyClass.instance_methods (false) # Sınıfa ait sadece bizim eklediğimiz methodları listeler