describe Accredible::SSO do
  let(:sso) { Accredible::SSO }

  it "should return sso link" do
    response = sso.generate_recipient_link(credential_id: '1234', recipient_email: 'example@example.com', wallet_view: true, group_id: '123')

    expect(response).to eq("Stubbed Request")
  end
end
