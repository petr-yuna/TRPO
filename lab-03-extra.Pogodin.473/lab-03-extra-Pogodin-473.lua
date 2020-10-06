
lgi = require 'lgi' -- podkl modul lgi 

gdk = lgi.Gdk 

gtk = lgi.Gtk 
gtk.init() -- inizializacia bibl gtk


prov = gtk.CssProvider()
prov:load_from_path('styles.css')

ctx = gtk.StyleContext()
scr = gdk.Screen.get_default() -- gdk ???
ctx.add_provider_for_screen(scr, prov, gtk.STYLE_PROVIDER_PRIORITY_APPLICATION)


bld = gtk.Builder() -- sozdanie new exmpl postroitela interface 
bld:add_from_file('lab-03-extra-Pogodin-473.glade')-- loading opisania interfac'a

ui = bld.objects

--ch = {ui.ch_a, ui.ch_b, ui.ch_c,ui.ch_d}

function ui.btn_do:on_clicked(...)

	if(tonumber(ui.entry.text) == 0) then
		ui.ch_a.active = false;
		ui.ch_b.active = false;
		ui.ch_c.active = false;
		ui.ch_d.active = false;
	

	elseif(tonumber(ui.entry.text) == 1) then
		ui.ch_a.active = true;
		ui.ch_b.active = false;
		ui.ch_c.active = false;
		ui.ch_d.active = false;
	

	elseif(tonumber(ui.entry.text) == 2) then
		ui.ch_a.active = false;
		ui.ch_b.active = true;
		ui.ch_c.active = false;
		ui.ch_d.active = false;
	

	elseif(tonumber(ui.entry.text) == 3) then
		ui.ch_a.active = true;
		ui.ch_b.active = true;
		ui.ch_c.active = false;
		ui.ch_d.active = false;
	

	elseif(tonumber(ui.entry.text) == 4) then
		ui.ch_a.active = false;
		ui.ch_b.active = false;
		ui.ch_c.active = true;
		ui.ch_d.active = false;
	

	elseif(tonumber(ui.entry.text) == 5) then
		ui.ch_a.active = true;
		ui.ch_b.active = false;
		ui.ch_c.active = true;
		ui.ch_d.active = false;
	

	elseif(tonumber(ui.entry.text) == 6) then
		ui.ch_a.active = false;
		ui.ch_b.active = true;
		ui.ch_c.active = true;
		ui.ch_d.active = false;
	

	elseif(tonumber(ui.entry.text) == 7) then
		ui.ch_a.active = true;
		ui.ch_b.active = true;
		ui.ch_c.active = true;
		ui.ch_d.active = false;
	

	elseif(tonumber(ui.entry.text) == 8) then
		ui.ch_a.active = false;
		ui.ch_b.active = false;
		ui.ch_c.active = false;
		ui.ch_d.active = true;
	

	elseif(tonumber(ui.entry.text) == 9) then
		ui.ch_a.active = true;
		ui.ch_b.active = false;
		ui.ch_c.active = false;
		ui.ch_d.active = true;
	

	elseif(tonumber(ui.entry.text) == 10) then
		ui.ch_a.active = false;
		ui.ch_b.active = true;
		ui.ch_c.active = false;
		ui.ch_d.active = true;
	

	elseif(tonumber(ui.entry.text) == 11) then
		ui.ch_a.active = true;
		ui.ch_b.active = true;
		ui.ch_c.active = false;
		ui.ch_d.active = true;
	

	elseif(tonumber(ui.entry.text) == 12) then
		ui.ch_a.active = false;
		ui.ch_b.active = false;
		ui.ch_c.active = true;
		ui.ch_d.active = true;
	
	
	elseif(tonumber(ui.entry.text) == 13) then
		ui.ch_a.active = true;
		ui.ch_b.active = false;
		ui.ch_c.active = true;
		ui.ch_d.active = true;
	

	elseif(tonumber(ui.entry.text) == 14) then
		ui.ch_a.active = false;
		ui.ch_b.active = true;
		ui.ch_c.active = true;
		ui.ch_d.active = true;
	

	elseif(tonumber(ui.entry.text) == 15) then
		ui.ch_a.active = true;
		ui.ch_b.active = true;
		ui.ch_c.active = true;
		ui.ch_d.active = true;
	

	else
		ui.entry.text = 'incorect data !!!'

		ui.ch_a.active = false;
		ui.ch_b.active = false;
		ui.ch_c.active = false;
		ui.ch_d.active = false;
	end
end




ui.wnd.title = 'lab-03-Pogodin-473'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

gtk.main() -- zapusk cicla obrabotki sobitij interface	
