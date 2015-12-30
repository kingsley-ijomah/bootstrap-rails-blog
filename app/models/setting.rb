class Setting < ActiveRecord::Base
	def self.site_name
		Setting.first.site_name
	end

	def self.post_per_page
		Setting.first.post_per_page
	end
end
