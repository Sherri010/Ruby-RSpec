require_relative "../models/Dog"

 describe Dog do
  describe "::new" do
    it "initializes a new dog" do
      dog = Dog.new
      expect(dog).to be_a(Dog)
    end
  end
   describe "#name" do
    it "allows the reading and writing of a name" do
      dog = Dog.new
      dog.name = "Fido"
      expect(dog.name).to eq("Fido")
    end
  end
  describe "hunger level" do
    it "allows the reading and writing of a hunger level" do
       dog = Dog.new
       dog.hunger_level = 10
       expect(dog.hunger_level).to eq(10)
    end
  end

  describe "# eat" do
    context "the dog is hungry" do
       dog = Dog.new
        dog.hunger_level =10
        it "lowe the hunger level" do
          dog.eat
          expect(dog.hunger_level).to eq(9)
        end
      end
      context "not hungry" do
         dog = Dog.new
        dog.hunger_level = 0
        it "never sets negative" do
          dog.eat
          expect(dog.hunger_level).to be >= 0
       end
    end

  end

end