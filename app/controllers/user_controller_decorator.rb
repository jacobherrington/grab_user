module UserControllerDecorator
  def self.prepended(base)
    base.skip_after_action :verify_authorized, only: :grab_user
  end

  # Double check the environment at runtime!
  if Rails.env.development?
    # This method allows you to quickly login as another user for testing
    # purposes in an development environment. Use it by accessing the
    # `/grab_user` route.

    def grab_user
      logger.warn "Using the grab_user workaround, this should never happen in production!"
      @user =
        if params[:id]
          User.find(params[:id])
        else
          User.first
        end
      sign_in_and_redirect @user, event: :authentication
    end
  end

  UsersController.prepend self
end
