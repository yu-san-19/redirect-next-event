class AppController < ApplicationController
  def next_event
    
    today = DateTime.now
    
    response = RestClient.get('https://connpass.com/api/v1/event/?series_id=3786&order=1&keyword=CoderDojo+%E5%B2%A1%E5%B1%B1+%E5%B2%A1%E5%8D%97')
    
    result = JSON.parse(response.body)
    
    next_event_url = result["events"][0]["event_url"]
    next_event_date = result["events"][0]["started_at"]
    
    if today < next_event_date then
      redirect_to next_event_url
      
    else
      redirect_to 'https://www.coderdojo-konan.jp/next-event-is-still-planned/'
      
    end
    
  end
end
