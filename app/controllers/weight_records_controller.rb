class WeightRecordsController < ApplicationController
  def new
    if Member.all.count <= 0
      redirect_to members_new_path
    elsif params[:date].nil?
      @weight_record = WeightRecord.new(date: Date.today)
    else
      @weight_record = WeightRecord.new(member_id:params[:member_id], date:params[:date])
    end
  end

  def create
    @weight_record = WeightRecord.new(weight_record_params)
    if @weight_record.save
      flash[:success] = "登録完了"
      redirect_to weight_records_index_path
    else
      flash.now[:danger] = "登録失敗"
      render 'new', status: :unprocessable_entity and return
    end
  end

  def index
    @weight_records = WeightRecord.all
  end

  def show
    @weight_record = WeightRecord.find(params[:id])
  end

  def edit
    @weight_record = WeightRecord.find(params[:id])
  end

  def update
    @weight_record = WeightRecord.find(params[:id])
    if @weight_record.update(weight_record_params)
      flash[:success] = "編集完了"
      redirect_to "#{weight_records_show_path}"
    else
      flash.now[:danger] = "編集失敗"
      render 'show', status: :unprocessable_entity and return
    end
  end

  def destroy
    if WeightRecord.find(params[:id]).destroy
      flash[:success] = "消しました"
      redirect_to weight_records_index_path
    else
      flash.now[:danger] = "削除失敗"
      render 'show', status: :unprocessable_entity and return
    end
  end

  private

  def weight_record_params
    params.require(:weight_record).permit(:member_id, :date, :weight, :comment)
  end
end
