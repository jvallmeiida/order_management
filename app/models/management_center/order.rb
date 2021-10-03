# frozen_string_literal: true

# Responsible for forming orders
class ManagementCenter::Order < ApplicationRecord
  self.table_name = "table_to_management_center_orders"

  enum status: %i[pending in_progress completed]

  validates :status, presence: true
  
end
