class Tweet < ApplicationRecord
    validates :messeage, length: { maximum: 140 }, presence: true
end
