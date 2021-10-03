# frozen_string_literal: true

# Responsible for managing
# Orders
class ManagementCenter::OrderPendingController < ApplicationController

  def index
    load_orders
  end

  def show
    load_order
  end

  def new
    build_order
  end

  def create
    build_order
    save_order or render :new
  end

  private

  def load_orders
    @orders ||= order_scope.pending
                           .reverse
  end

  def load_order
    @order ||= order_scope.find(params[:id])
  end

  # default to status is 0
  def build_order
    @order ||= ManagementCenter::Order.new
  end

  def save_order
    if @order.save
      redirect_to management_center_order_all_index_path,
        notice: "Você criou um pedido pendente com o número #{@order.id} com sucesso!"
    end
  end

  def order_scope
    ManagementCenter::Order.all
  end
end
