require 'rails_email_preview'

#= REP hooks and config
# RailsEmailPreview.setup do |config|

#  # hook before rendering preview:
#  config.before_render do |message, preview_class_name, mailer_action|
#    # apply premailer-rails:
#    Premailer::Rails::Hook.delivering_email(message)
#    # or actionmailer-inline-css:
#    ActionMailer::InlineCssHook.delivering_email(message)
#  end

#  # do not show Send Email button
#  config.enable_send_email = true

#  # You can specify a controller for RailsEmailPreview::ApplicationController to inherit from:
#  config.parent_controller = 'Admin::ApplicationController' # default: '::ApplicationController'
# end

#= REP + Comfortable Mexican Sofa integration
#
# # enable comfortable_mexican_sofa integration:
# require 'rails_email_preview/integrations/comfortable_mexica_sofa'

Rails.application.config.to_prepare do
  RailsEmailPreview.setup do |config|
    config.layout            = 'application'
    config.preview_classes   = Thredded::BaseMailerPreview.preview_classes
    # Do not show Send Email button
    config.enable_send_email = false
  end
end
