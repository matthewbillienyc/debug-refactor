class SampleController < ApplicationController
  def stack_trace
    test_string = 'Hello-World'
    test_sting.gsub('-', ' ')
    render json: { testing: test_string }
  end

  def logging
    test_string = {
      'take-a-look' => 'at-me'
    }
    Rails.logger.info "test_string was: #{test_string}"
    render json: test_string
  end

  def byebug_search
    request_params = {
      search_type: params[:search_type],
      search_value: params[:search_value]
    }

    response = JSON.parse(SearchService.search(request_params))
    render json: response.map do |r|
      r.name
    end
  end

  def postman
    if params[:logonId]
      render json: {
               status: 'success',
               message: 'hey there',
               results: [
                 {
                   name: 'bob',
                   occupation: 'plumber'
                 },
                 {
                   name: 'bill',
                   occupation: 'lawyer'
                 }
               ]
             }
    else
      render json: {
               error: 'logonId must be present'
             }
    end
  end
end
