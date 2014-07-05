class ErrorsController < ApplicationController
  
  def catch_404
    @wrong=Wrong.find_or_create_by(url: request.original_url)    
  end

  def list_all_error
    respond_to do |format|
      format.csv { send_data  Wrong.to_csv }
    end
  end
end