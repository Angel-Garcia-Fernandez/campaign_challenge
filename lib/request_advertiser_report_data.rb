# Module where to include all the request to the Platform161 REST API.

module RequestAdvertiserReportData
  def get_token
    response = HTTP.post('http://staging.platform161.com/api/v2/access_tokens/', form: credentials)
  end

  def credentials
    {
        user: 'test.api',
        password: 'iheATPM0',
        client_id: 'test',
        client_secret: 'Hmpu8iOfTAJo/lhtXCYTgZtYmD1RjUx+D/2gndPxBMRJFUc='
    }
  end

end

