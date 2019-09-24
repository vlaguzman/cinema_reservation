require "rails_helper"

describe User, type: :model do 
  context "When a user is registering" do
    context "When all fields are full" do
      it "Should create the user" do
        user = User.new(first_name: 'Sebastian', last_name: 'Castro', phone: 5555)

        expect(user.save).to be_truthy
        expect(user.first_name).to eq('Sebastian')
      end
    end
    context "When some field is not full" do
      it "Should not create user" do
        user = User.new(first_name: 'Sebas', last_name: 'Castro')

        expect(user.save).to be_falsey 
        expect(user.errors.messages).to eq({:phone=>["can't be blank"]})
      end
    end
  end
end
