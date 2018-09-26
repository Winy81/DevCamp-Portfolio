module SetSource
  extend ActiveSupport::Concern

#ez sessionhoz, flag a social mediahoz

  included do
 	before_action :set_source
  end

  def set_source
      session[:source] = params[:q] if params[:q]
  end
end