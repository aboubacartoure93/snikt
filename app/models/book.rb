class Book < ActiveRecord::Base
  has_many :pages, -> { order("position ASC") }, dependent: :destroy
  belongs_to :user
end
