require_relative "../models/Dog"

 describe Dog do
  subject(:dog) {Dog.new}
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

end