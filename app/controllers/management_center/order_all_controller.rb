# frozen_string_literal: true

# Responsible for managing
# Orders
class ManagementCenter::OrderAllController < ApplicationController

  def index
    load_orders_completed
    load_orders_in_progress
    load_orders_pending
  end

  private

  def load_orders_completed
    @orders_completed ||= order_scope.completed
                                     .sort
                                     .reverse
  end

  def load_orders_in_progress
    @orders_in_progress ||= order_scope.in_progress
                                       .sort
                                       .reverse
  end

  def load_orders_pending
    @orders_pending ||= order_scope.pending
                                   .sort
                                   .reverse
  end

  def order_scope
    ManagementCenter::Order.all
  end
end
