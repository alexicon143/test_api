class ApplicationController < ActionController::API
  # reset captcha code after each request for security
  after_filter :reset_last_captcha_code!

end
