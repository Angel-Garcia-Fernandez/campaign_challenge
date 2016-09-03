# Module where to include all the request to the Platform161 REST API.

module RequestAdvertiserReportData
  def get_token
    token = HTTP.post('https://staging.platform161.com/api/v2/access_tokens', form: credentials)
  end

  def credentials
    {
        user: 'test.api',
        password: 'iheATPM0',
        client_id: 'test',
        client_secret: 'Hmpu8iOfTAJo/lhtXCYTgZtYmD1RjUx+D/2gndPxBMRJFUc='
    }
  end

  def get_report
    token = get_token
    if token.code == 200
      HTTP.headers( 'PFM161-AccessToken' => token )
      response = HTTP.get('https://staging.platform161.com/api/v2/testcost')
    else
      token
    end
  end
end

