module BigosApp
  class BigosEventsBoxElement < PageElement

    def self.class_name
      "Events module"
    end

    def render
      "bigos_evnts_box/item"
    end

    def admin_render
      "bigos_evnts_box/admin/item"
    end

  end
end