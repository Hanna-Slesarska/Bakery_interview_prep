=begin
bakery_management.rb

Welcome to the bakery! 🍰

Can you debug these classes to manage the baking process? 🍪

Expected output:
Starting a new bakery
Bakery with 0 items baked
Baking cookies...
Bakery with 10 cookies baked
Decorating items...
Bakery with 10 cookies baked, and all items decorated
Baking cakes...
Bakery with 10 cookies and 5 cakes baked, and all items decorated
Packing items...
Bakery with 10 cookies and 5 cakes baked, and all items packed

=end

class Bakery
    attr_accessor :cookies, :cakes, :items_decorated, :items_packed
    
    def initialize
      @cookies = 0
      @cakes = 0
      @items_decorated = false
      @items_packed = false
    end
  
    def bake_cookies(count)
      @cookies += count
    end
  
    def bake_cakes(count)
      @cakes += count
    end
  
    def decorate_items
      @items_decorated = true
    end
  
    def pack_items
      @items_packed = true
    end
  
    def items_status
      if @items_decorated && @items_packed
        "all items decorated and packed"
      elsif @items_decorated
        "all items decorated"
      elsif @items_packed
        "all items packed"
      else
        "items not decorated or packed"
      end
    end
  
    def to_string
      if @cookies > 0 && @cakes > 0
        "Bakery with #{@cookies} cookies and #{@cakes} cakes baked, and #{items_status}"
      elsif @cookies > 0
        "Bakery with #{@cookies} cookies baked, and #{items_status}"
      elsif @cakes > 0
        "Bakery with #{@cakes} cakes baked, and #{items_status}"
      else
        "Bakery with 0 items baked"
      end
    end
  
    def self.manage
      bakery = Bakery.new
      puts "Starting a new bakery"
      puts bakery.to_string
      puts "Baking cookies..."
      bakery.bake_cookies(10)
      puts bakery.to_string
      puts "Decorating items..."
      bakery.decorate_items
      puts bakery.to_string
      puts "Baking cakes..."
      bakery.bake_cakes(5)
      puts bakery.to_string
      puts "Packing items..."
      bakery.pack_items
      puts bakery.to_string
  
      bakery
    end
  end