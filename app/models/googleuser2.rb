class Googleuser2 < ApplicationRecord

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |googleuser2|
      googleuser2.provider = auth.provider
      googleuser2.uid = auth.uid
      googleuser2.name = auth.info.name
      googleuser2.oauth_token = auth.credentials.token
      googleuser2.oauth_expires_at = Time.at(auth.credentials.expires_at)
      googleuser2.save!
    end
  end

end
