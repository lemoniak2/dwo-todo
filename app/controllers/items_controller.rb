class ItemsController < ApplicationController
  expose(:items)
  expose(:item, attributes: :item_params)

  def create
    if item.save
      redirect_to items_url, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def update
    if item.save
      redirect_to items_url, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :image, :rating)
  end
end
