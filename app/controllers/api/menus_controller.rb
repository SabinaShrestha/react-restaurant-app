class Api::MenusController < Api::ApiController
  before_action :set_menu, only: [:update, :destroy, :show]


  def index
    render json: Menu.all
  end

  def create
    menu = Menu.new(menu_params)
    if menu.save
      render json: menu
    else
      render_errors(menu)
    end
  end

  def show
    render json: @menu
  end

  def update
    if @menu.update(menu_params)
      render json: @menu
    else
      render_errors(@menu)
    end
  end

  def destroy
    @menu.destroy
  end

  private
    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:option)
    end


end
