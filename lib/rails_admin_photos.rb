require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdminPhotos
end


module RailsAdmin
  module Config
    module Actions
      class Photos < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :member do
          true
        end

        register_instance_option :http_methods do
          [:get, :put]
        end

        register_instance_option :authorized? do
          bindings[:abstract_model].model_name == "Activity" rescue false
        end

        register_instance_option :controller do
          Proc.new do

            if request.get? # EDIT

              respond_to do |format|
                format.html { render @action.template_name }
                format.js   { render @action.template_name, :layout => false }
              end

            elsif request.put? # UPDATE


              #@cached_assocations_hash = associations_hash
              #@modified_assoc = []

              #@old_object = @object.dup

              #satisfy_strong_params!
              #sanitize_params_for!(request.xhr? ? :modal : :update)

              #@object.set_attributes(params[@abstract_model.param_key], _attr_accessible_role)
              #@authorization_adapter && @authorization_adapter.attributes_for(:update, @abstract_model).each do |name, value|
                #@object.send("#{name}=", value)
              #end

              #if @object.save
                #@auditing_adapter && @auditing_adapter.update_object(@abstract_model, @object, @cached_assocations_hash, associations_hash, @modified_assoc, @old_object, _current_user)
                #respond_to do |format|
                  #format.html { redirect_to_on_success }
                  #format.js { render :json => { :id => @object.id.to_s, :label => @model_config.with(:object => @object).object_label } }
                #end
              #else
                #handle_save_error :edit
              #end

            end

          end
        end

        register_instance_option :link_icon do
          'icon-camera'
        end
      end
    end
  end
end
