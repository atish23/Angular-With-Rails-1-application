class Log < ActiveRecord::Base

	scope :recent_logs, -> { order('logs.created_at DESC').limit(25) }
	
end
