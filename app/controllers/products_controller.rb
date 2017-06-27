class ProductsController < ApplicationController

  def index
    @products = Product.all
    @linkPic = @products.last.picture.url
    @product = @products.last
  end

  def edit
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    # @user = User.first
    @product = Product.new(product_params)
    @product.picture = params[:product][:attachment]
    # @product.user_id = @user.id
    # current_user
    if @product.save
      redirect_to products_path, notice: "The picture #{@product.title} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice:  "The picture #{@product.title} has been deleted."
  end

private
  def product_params
    params.require(:product).permit(:title, :picture)
  end
end
