class Owner < ApplicationRecord
    # 여러개의 Items 을 가지고 있다.
    has_many :items
    has_many :hobbies
end
