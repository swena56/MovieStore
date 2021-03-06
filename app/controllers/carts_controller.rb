class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
	@totalPrice = 0
	@carts.each do |item|
		@totalPrice = @totalPrice + item.price
	end
	
	@shippingPrice = 3.99
	#need only the cart items for the current user
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
	@cart.name = params[:name]
	@cart.price = params[:price]
	@cart.quantity = 1;
	@cart.save
	redirect_to "/carts"
  end

  # GET /carts/1/edit
  def edit
  end

  def emptyCart
	
  end
  
  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)
    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Item was removed from cart.' }
      format.json { head :no_content }
    end
  end

  
	def emptyCart
		@carts = Cart.all
		@carts.destroy
		redirect_to carts_url
		#notice 'Cart is now empty'
		
	end
	
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:name, :price)
    end
end
