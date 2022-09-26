#activity 6a

class Confection
    def prepare_method
        puts "Baking at 350 degrees for 25 minutes"
    end
end

class Cupcake < Confection
    def prepare_method
        super
        puts "Applying frosting"
    end
end

class BananaCake < Confection
    def prepare_method
        super
    end
end

cupcake = Cupcake.new
cupcake.prepare_method

bananacake = BananaCake.new
bananacake.prepare_method