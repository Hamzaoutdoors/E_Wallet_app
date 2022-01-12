class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def show; end

  def new
    @activity = Activity.new
  end

  def create
    @activity = current_user.activities.new(activity_params)

        if @activity.save
          flash[:notice] = 'activity was successfully created.'
        else
          flash[:alert] = "Failed to add activity - #{@activity.errors.full_messages.first}"
        end
        redirect_to activities_path
  end

  def destroy
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :amount)
  end
end
