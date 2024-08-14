class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
    @training = Training.new
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      render json: { success: true }
    else
      render json: { success: false, errors: @training.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to root_path, notice: '種目を削除しました'
  end

  private

  def training_params
    params.require(:training).permit(:menu, :weight, :body)
  end
end