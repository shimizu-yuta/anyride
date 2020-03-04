class ReservationsController < ApplicationController
  def show
    @bike = Bike.find(params[:id])
  end

  def create
    @reservations = current_user.reservations.create(reservation_params)
    redirect_to root_path, notice: "予約が完了しました"
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :price, :owner_id, :borrower_id, :bike_id)
  end
end
