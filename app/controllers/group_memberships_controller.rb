class GroupMembershipsController < ApplicationController
  def create
    @group_membership = GroupMembership.new(group_memberships_params)
    if @group_membership.save
      redirect_to @group_membership.group
    else
      flash.now[:notice] = "You failed to join the group"
      redirect_to @group_membership.group
    end
  end

  def update
    @group_membership = GroupMembership.find(params[:id])
    if @group_membership.update(group_memberships_params)
      flash.now[:notice] = "Your List was updated!"
      redirect_to @group_membership.group
    else
      flash.now[:notice] = "You failed to update the membership"
      redirect_to @group_membership.group
    end
  end

  private

  def group_memberships_params
    params.require(:group_membership).permit(:group_id, :user_id)
  end
end
