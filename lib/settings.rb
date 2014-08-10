require 'yaml'
# require_relative 'setup_wizard'

class Settings

  def directory
    get_settings_file
  end

  def file_name
    file_formatted
  end

private

  def file_formatted
    Time.now.strftime("%F") + ".html"
  end

  def get_settings_file
    "pages/"
  end
end
