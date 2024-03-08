class Tweet < ApplicationRecord

  belongs_to :user
  has_many :favorites  # 追加
end
