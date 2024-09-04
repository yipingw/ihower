class Event < ApplicationRecord
  has_many :event_groupships
  has_many :groups, through: :event_groupships
  has_one :location, dependent: :destroy
  belongs_to :category, optional: true
  has_many :attendees, -> { where([ "created_at > ?", Time.now - 7.day ]).order("id DESC") }, dependent: :destroy
  validates_presence_of :name
end
