module ApplicationHelper
  def gravatar_for(user, options = {size:80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class:"img-circle")
  
  
  

# include MD5 gem, should be part of standard ruby install
#require 'digest/md5'
 
# get the email from URL-parameters or what have you and make lowercase
#email_address = params[:email].downcase
 
# create the md5 hash
#hash = Digest::MD5.hexdigest(email_address)
 
# compile URL which can be used in <img src="RIGHT_HERE"...
#image_src = "https://www.gravatar.com/avatar/#{hash}"
  end
  
end
