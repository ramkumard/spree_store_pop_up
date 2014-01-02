Deface::Override.new(
            :name => "pop_tab",
            :virtual_path => "spree/layouts/admin",
            :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
            :text => "<%= tab :pop_up_manager, :icon => 'icon-bullhorn' %>")
