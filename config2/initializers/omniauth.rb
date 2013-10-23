OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
  :scope => 'email, publish_actions, publish_stream, user_birthday, user_education_history,
    user_interests, user_likes, user_website, user_work_history, publish_actions,
    user_actions:fluxco_de, friends_actions:fluxco_de'
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET'],
  {
    :secure_image_url => 'true',
    :image_size => 'original',
    :authorize_params => {
      :force_login => 'true',
      :x_auth_access_type => 'write'
    }
  }

  # Add soon!
  # https://github.com/intridea/omniauth-github
  # https://github.com/samdunne/omniauth-googleplus-oauth2
  # https://github.com/decioferreira/omniauth-linkedin-oauth2
  # https://github.com/joshrowley/omniauth-trello

end
