# frozen_string_literal: true

class CommentComponent < ViewComponent::Base
  def initialize(comment=Comment.new)
    @comment = comment
  end
end
