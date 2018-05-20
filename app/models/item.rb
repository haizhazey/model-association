class Item < ApplicationRecord
    # Owner 에게 속해 있다.
    belongs_to :owner
end
