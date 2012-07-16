module BeesHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(bee)
   gravatar_id = Digest::MD5::hexdigest(bee.email.downcase)
   gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
   image_tag(gravatar_url, alt: bee.name, class: "gravatar")
  end
end
