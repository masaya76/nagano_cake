class Admin::ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def index
    @item = Item.new
    @items = Item.all
    
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_item_path(@item)

  end

  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    @item.update(item_id)
    redirect_to admin_item_path(@item)
  end 

private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active, :genre_id)
  end

end
