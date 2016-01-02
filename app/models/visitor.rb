class Visitor < ActiveRecord::Base
	has_many :notifications, as: :notifiable, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :messages, dependent: :destroy

	accepts_nested_attributes_for :comments
end
