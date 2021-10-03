# frozen_string_literal: true

# Responsible for managing
# Orders in progress
class ManagementCenter::OrderInProgressController < ApplicationController

  def index
    load_orders
  end

  def show
    load_order
  end

  def update
    load_order
    build_order
    save_order or render :update
  end

  private

  def load_orders
    @orders ||= order_scope.in_progress
                           .reverse
  end

  def load_order
    @order ||= order_scope.find(params[:id])
  end

  def build_order
    @order ||= ManagementCenter::Order.new
    @order.status = :in_progress
  end

  def save_order
    if @order.save
      redirect_to management_center_order_all_index_path,
        notice: "O seu pedido número #{@order.id} está em progresso!"
    end
  end

  def order_scope
    ManagementCenter::Order.all
  end
end
