class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:success] = "作成しました"
      #redirect_to members_show_path(@member.id)
      redirect_to members_index_path
    else
      flash.now[:danger] = "失敗しました"
      render new, status: :unprocessable_entity and return
    end
  end

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      flash[:success] = ""
      redirect_to "#{members_show_path}"
    else
      flash.now[:danger] = ""
      render edit, status: :unprocessable_entity and return
    end
  end

  def destroy
    Member.find(params[:id]).destroy
    flash[:success] = ""
    redirect_to member_index_path
  end


  private


  def member_params
    params.require(:member).permit(:name, :height)
  end

end
