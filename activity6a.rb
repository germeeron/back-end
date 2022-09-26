#activity 6a

class Confection
    def prepare
        puts "Baking at 350 degrees for 25 minutes"
    end
end

class Cupcake < Confection
    def prepare
        super
        puts "Applying frosting"
    end
end

class BananaCake < Confection
    def prepare
        super
    end
end

cupcake = Cupcake.new
cupcake.prepare

bananacake = BananaCake.new
bananacake.prepare