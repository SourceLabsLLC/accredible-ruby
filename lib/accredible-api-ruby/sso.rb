module Accredible
  class SSO

    def self.generate_recipient_link(credential_id:nil, recipient_id:nil, recipient_email:nil, wallet_view:nil, group_id:nil, redirect_to:nil)
      params = {}

      params[:credential_id]   = credential_id   if !credential_id.nil?
      params[:recipient_id]    = recipient_id    if !recipient_id.nil?
      params[:recipient_email] = recipient_email if !recipient_email.nil?
      params[:wallet_view]     = wallet_view     if !wallet_view.nil?
      params[:group_id]        = group_id        if !group_id.nil?
      params[:redirect_to]     = redirect_to     if !redirect_to.nil?

      uri = SSO.api_end_point
      Accredible.request(uri, :post, params)
    end

    def self.api_end_point
      @url = Accredible.api_url("sso/generate_link")
    end
  end
end
