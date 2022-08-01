FactoryBot.define do
    factory :product, :class => "Product" do
        title {"Raodster top"}
        description {"regular fit round neck top"}
        price {899.0}
        association :seller
        image {"image.jpg"}
        video {"video.mp4"}
        
    end    
end 