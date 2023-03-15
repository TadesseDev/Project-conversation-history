require 'rails_helper'

RSpec.describe User, type: :model do
  context  "Associations" do
    it "Assert user has many projects " do
      user=User.reflect_on_association(:projects)
      expect(user.macro).to eq(:has_many)
      end
    it "Assert user has many comments" do
      user=User.reflect_on_association(:comments)
      expect(user.macro).to eq(:has_many)
      end
    it "test project belongs to a user " do
      project=Project.reflect_on_association(:user)
      expect(project.macro).to eq(:belongs_to)
      end
    it "Assert project has many comments" do
      project=Project.reflect_on_association(:comments)
      expect(project.macro).to eq(:has_many)
      end
  end
  describe "validations" do
    before(:example) do
      user=User.create!(email: "userone@gamil.com", password: "123123",  encrypted_password:  "YcJlcyz.AT6UykD/8iuN.OcsQf98.5.8VXyCwupcTlEsUT.jlV6aS")
    end
    it "Assert user email is unique" do
      user=User.new(email: "userone@gamil.com", password: "123123",  encrypted_password:  "YcJlcyz.AT6UykD/8iuN.OcsQf98.5.8VXyCwupcTlEsUT.jlV6aS")
      expect(user.save).to eq(false)
    end
    # Other validation will be added here
  end
end
