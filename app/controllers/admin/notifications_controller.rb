class Admin::NotificationsController < Admin::ApplicationController
  def index
  	@visitor_notifications = Notification.where(notifiable_type: 'Visitor').order(id: :desc)
  	@comment_notifications = Notification.where(notifiable_type: 'Comment').order(id: :desc)
  end

  def destroy
  	@notifiable = Notification.find(params[:id])
  	@notifiable.destroy

  	redirect_back, notice: 'Notification was deleted successfully'
  end

  def delete_all
  	Notification.delete_all
  	redirect_back(fallback_location: admin_notifications_path), notice: 'All notifications deleted successfully'
  end
end
