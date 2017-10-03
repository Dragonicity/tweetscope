class Tweet < ApplicationRecord
  belongs_to :keyword, touch: true
end
