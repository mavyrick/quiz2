class SupportRequestController < ApplicationController

  def create
    support_requests_params = params.require(:support_request).permit([:name, :email, :message, :department, :action])
    @request = SupportRequest.create support_requests_params

    if @request.save
  # render :show
      flash[:notice] = "Project created successfully"
      redirect_to support_requests_path(@request)
    else
      render :new
    end
  end

  def destroy
    @request = SupportRequest.find params[:id]
    @request.destroy
    flash[:notice] = "Support request deleted successfully"
    redirect_to support_requests_path
  end

  def edit
    @request = SupportRequest.find params[:id]
  end

  def index
    @requests = SupportRequest.order(created_at: :desc).page(params[:page]).per(7)
  end

  def new
    @request = SupportRequest.new
  end

  def show
    @request = SupportRequest.find params[:id]
  end

  def update
    @request = SupportRequest.find params[:id]
    @request.update params.require(:support_request).permit([:name, :email, :message, :department, :action])
    flash[:notice] = "Support request editted successfully"
    redirect_to support_request_path(@request)
  end
end
