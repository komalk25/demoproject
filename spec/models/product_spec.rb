require 'rails_helper'

RSpec.describe Product, type: :model do
    subject{
        described_class.new(
            title: "woment top",
            description: "regular fit, round neck top",

        )
    }

    it {should validate_presence_of(:title)}
end