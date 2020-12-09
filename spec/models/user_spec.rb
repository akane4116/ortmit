require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe "User" do #User モデルについて
   #名前、email、パスワードがあれば有効な状態であること
    it "is valid with a name, email, and password" do
     user = User.new(
       name: "ogura",
       email: "h1p62est@gmail.com",
       password: "sd112611",
     )
    
    expect(user).to be_valid
  end
end

