require_dependency "bigos_events_box/application_controller"
module BigosEventsBox

  class Admin::EventOptionsController < ApplicationController

    def destroy
      @eo = BigosEventsBox::EventOption.find(params[:id])
      @event_id = @eo.event_id
      @eo.destroy

      respond_to do |format|
        format.html { redirect_to bigos_events_box.edit_admin_event_path @event_id }
      end
    end

  end

end
