# frozen_string_literal: true

class NewCommentComponent < ViewComponent::Base
include ActionController::Base::HelperMethods
  def initialize(project:)
    @project = project
  end
end
