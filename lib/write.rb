require 'json'
require_relative 'settings'

class Write
  attr_reader :settings, :image

  def initialize img
    @settings = Settings.new
    @image = img
  end

  def save
    File.open(file, 'a+') do |i|
      i.puts ""
      i.write image 
    end
  end

private

  def file
    settings.directory + settings.file_name
  end
end
