module ResourceController

  def self.included(base)
    base.before_action :set_resource, only: [:show, :update, :destroy]
  end

  # GET /resources
  def index
    objects = controller_name.classify.constantize.all
    render json: objects
  end

  # GET /resources/1
  def show
    render json: @object
  end

  # POST /resources
  def create
    object = controller_name.classify.constantize.new(resource_params)
    if object.save
      render json: object, status: :created#, location: object
    else
      render json: object.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resources/1
  def update
    if @object.update(resource_params)
      render json: @object
    else
      render json: @object.errors, status: :unprocessable_entity
    end
  end


  def set_resource
    @object = controller_name.classify.constantize.find(params[:id])
  end

  def resource_params
    params.require(controller_name.singularize.to_sym).permit!
  end

end
