class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @group_membership = GroupMembership.new
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.new
    render 'new'
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      GroupMembership.create(group_id: @group.id, user_id: current_user.id, commissioner: true)
      redirect_to @group
    else
      render 'new'
    end
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      flash.now[:notice] = "Your List was updated!"
      redirect_to @group
    else
      render 'new'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
