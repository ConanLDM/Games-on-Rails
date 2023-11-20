class ApplicationController < ActionController::Base
  helper :search
  before_action :turbo_frame_request_variant

  def render_flash
    render turbo_stream: turbo_stream.update("flash", partial: "shared/flash")
  end

  private

  def turbo_frame_request_variant
    request.variant = :turbo_frame if turbo_frame_request?
  end
end
