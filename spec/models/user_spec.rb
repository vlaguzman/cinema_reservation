require "rails_helper"

describe User, type: :model do 
  context "Cuando se esta registrando un usuario" do
    context "Cuando todos los campos se encuentran llenos" do
      it "Debe crear el usuario" do
        user = User.new(first_name: 'Sebastian', last_name: 'Castro', phone: 5555)

        expect(user.save).to be_truthy
        expect(user.first_name).to eq('Sebastian')
      end
    end
    context "Cuando algun campo no se encuenta lleno" do
      it "No debe crear el usuario" do
        user = User.new(first_name: 'Sebas', last_name: 'Castro')

        expect(user.save).to be_falsey 
        expect(user.errors.messages).to eq({:phone=>["can't be blank"]})
      end
    end
  end
end
