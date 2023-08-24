class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        posts_path
    end

    def after_sign_out_path_for(resource_or_scope)
        root_path
    end

end
