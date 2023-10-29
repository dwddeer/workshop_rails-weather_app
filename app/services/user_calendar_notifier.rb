require 'google/apis/calendar_v3'
require 'google/api_client/client_secrets'

def initialize(user, book)
    @user = user
    @book = book
  end

  private

  attr_reader :book, :user
  CALENDAR_ID = 'primary'.freeze