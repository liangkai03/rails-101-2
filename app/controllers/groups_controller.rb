class GroupsController < ApplicationController
  def index
    @group = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save

    redirect_to groups_path
end

private

def group_params
  params.require(:group).permit(:tittle, :description)
end

end
