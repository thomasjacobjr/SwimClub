class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :menu_title, use: :slugged
end
