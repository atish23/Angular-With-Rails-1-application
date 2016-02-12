class LogsController < ApplicationController
	protect_from_forgery with: :null_session



	def index
		@logs = Log.recent_logs
			respond_to do |format|
				format.json {render json: @logs.to_json, status: 200}
			end
	end

	def log
		@log = Log.new(logs_params)
			respond_to do |format|
				if @log.save
					format.json {render json: @log.to_json, status: 200}
				else
					format.json {render json: @log.errors.to_json, status: :unprocessable_entity}
				end
			end
	end

end
