json.extract! report, :id, :happy, :big_wins, :progress, :lesson, :created_at, :updated_at
json.url report_url(report, format: :json)