class Quote < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }
  after_update_commit -> { broadcast_update_to "quotes" }
  after_create_commit -> { broadcast_prepend_to "quotes" }
  after_destroy_commit -> { broadcast_remove_to "quotes" }
  # def broadcast
  #   broadcast_update_to self, partial: "quotes/quote", locals: { quote: self }
  # end
end
