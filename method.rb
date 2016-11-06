
def HelloMethod(name = "Default Name")
    puts "Merhaba #{name.capitalize}"  
end

HelloMethod("Aykut")
HelloMethod "Aykut Asil"
HelloMethod()