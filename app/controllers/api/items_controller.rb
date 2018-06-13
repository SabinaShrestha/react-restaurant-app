class Api::ItemsController < ApplicationController
  before_action :set_menu
  before_action :set_item, only: [:show, :update, :destroy]

  def index
    render json:Menu.items
  end

  def show
    render json:@item
  end

  def create
    item = Item.new(item_params)
    if item.save
      render json:item
    else
      render_errors(item)
    end
  end

  def update
    if @item.update(item_params)
      render json:@item
    else
      render_errors(@item)
    end
  end

  def destroy
    @item.destroy
  end


  private

    def set_menu
      @menu = Menu.find(params[:menu_id])
    end


    def set_item
      @item = Menu.items.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:title, :price, :menu_id)
    end
end
