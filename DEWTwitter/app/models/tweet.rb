class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'Hid7QM1Z1Pa0wNkyISjg'
      config.consumer_secret = 'stCc1GzWVpCY9u6sKWfMnyT1vNadTVB0jQFO4s48zs'
      config.oauth_token = '729626425-gZiDXhunQHAokH64Nrg7WRXajnLU5Uyf4W8ut1hk'
      config.oauth_token_secret = 'vp34rCu8qzj1kEfFfvdO6XyS3XXvmE7VIlHhQdJxO0'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def update_status
	/return "sin update" if self.message.blank?/
	Twitter.update(self.message)
  end
  
   def lista_tweets
	/return "sin update" if self.message.blank?/
	Twitter.home_timeline(self.user).first.text
  end
   
end
