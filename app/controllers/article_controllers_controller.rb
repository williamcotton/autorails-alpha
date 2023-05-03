class ArticleControllersController < ApplicationController
  before_action :set_article_controller, only: %i[ show edit update destroy ]

  # GET /article_controllers or /article_controllers.json
  def index
    @article_controllers = ArticleController.all
  end

  # GET /article_controllers/1 or /article_controllers/1.json
  def show
  end

  # GET /article_controllers/new
  def new
    @article_controller = ArticleController.new
  end

  # GET /article_controllers/1/edit
  def edit
  end

  # POST /article_controllers or /article_controllers.json
  def create
    @article_controller = ArticleController.new(article_controller_params)

    respond_to do |format|
      if @article_controller.save
        format.html { redirect_to article_controller_url(@article_controller), notice: "Article controller was successfully created." }
        format.json { render :show, status: :created, location: @article_controller }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_controllers/1 or /article_controllers/1.json
  def update
    respond_to do |format|
      if @article_controller.update(article_controller_params)
        format.html { redirect_to article_controller_url(@article_controller), notice: "Article controller was successfully updated." }
        format.json { render :show, status: :ok, location: @article_controller }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_controllers/1 or /article_controllers/1.json
  def destroy
    @article_controller.destroy

    respond_to do |format|
      format.html { redirect_to article_controllers_url, notice: "Article controller was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_controller
      @article_controller = ArticleController.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_controller_params
      params.require(:article_controller).permit(:title, :body, :description, :isPublished, :publishedAt)
    end
end
