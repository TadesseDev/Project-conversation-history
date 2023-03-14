# frozen_string_literal: true

class UpdateHistoryComponent < ViewComponent::Base
def initialize(update_history=UpdateHistory.new)
    @update_history = update_history
  end
end
