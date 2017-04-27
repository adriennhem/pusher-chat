# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = '332597'
Pusher.key = '159542cf4ed8c22fd96c'
Pusher.secret = '7662708819d993dfbdfc'
Pusher.logger = Rails.logger
Pusher.encrypted = true
