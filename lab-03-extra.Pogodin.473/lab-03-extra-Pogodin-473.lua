
lgi = require 'lgi' -- podkl modul lgi 

gdk = lgi.Gdk 

gtk = lgi.Gtk 
gtk.init() -- inizializacia bibl gtk


prov = gtk.CssProvider()
prov:load_from_path('style.css')

ctx = gtk.StyleContext()
scr = gdk.Screen.get_default() -- gdk ???
ctx.add_provider_for_screen(scr, prov, gtk.STYLE_PROVIDER_PRIORITY_APPLICATION)


bld = gtk.Builder() -- sozdanie new exmpl postroitela interface 
bld:add_from_file('lab-03-extra.glade')-- loading opisania interfac'a

ui = bld.objects

ch = {ui.ch_a, ui.ch_b, ui.ch_c,ui.ch_d}

function ui.btn_do:on_clicked

	if(tonumber(ui.entry.text) == 0) then
		ch[0].active = false;
		ch[1].active = false;
		ch[2].active = false;
		ch[3].active = false;
	end

	if(tonumber(ui.entry.text) == 1) then
		ch[0].active = true;
		ch[1].active = false;
		ch[2].active = false;
		ch[3].active = false;
	end

	if(tonumber(ui.entry.text) == 2) then
		ch[0].active = false;
		ch[1].active = true;
		ch[2].active = false;
		ch[3].active = false;
	end

	if(tonumber(ui.entry.text) == 3) then
		ch[0].active = true;
		ch[1].active = true;
		ch[2].active = false;
		ch[3].active = false;
	end

	if(tonumber(ui.entry.text) == 4) then
		ch[0].active = false;
		ch[1].active = false;
		ch[2].active = true;
		ch[3].active = false;
	end

	if(tonumber(ui.entry.text) == 5) then
		ch[0].active = true;
		ch[1].active = false;
		ch[2].active = true;
		ch[3].active = false;
	end

	if(tonumber(ui.entry.text) == 6) then
		ch[0].active = false;
		ch[1].active = true;
		ch[2].active = true;
		ch[3].active = false;
	end

	if(tonumber(ui.entry.text) == 7) then
		ch[0].active = true;
		ch[1].active = true;
		ch[2].active = true;
		ch[3].active = false;
	end

	if(tonumber(ui.entry.text) == 8) then
		ch[0].active = false;
		ch[1].active = false;
		ch[2].active = false;
		ch[3].active = true;
	end

	if(tonumber(ui.entry.text) == 9) then
		ch[0].active = true;
		ch[1].active = false;
		ch[2].active = false;
		ch[3].active = true;
	end

	if(tonumber(ui.entry.text) == 10) then
		ch[0].active = false;
		ch[1].active = true;
		ch[2].active = false;
		ch[3].active = true;
	end

	if(tonumber(ui.entry.text) == 11) then
		ch[0].active = true;
		ch[1].active = true;
		ch[2].active = false;
		ch[3].active = true;
	end

	if(tonumber(ui.entry.text) == 12) then
		ch[0].active = false;
		ch[1].active = false;
		ch[2].active = true;
		ch[3].active = true;
	end
	
	if(tonumber(ui.entry.text) == 13) then
		ch[0].active = true;
		ch[1].active = false;
		ch[2].active = true;
		ch[3].active = true;
	end

	if(tonumber(ui.entry.text) == 14) then
		ch[0].active = false;
		ch[1].active = true;
		ch[2].active = true;
		ch[3].active = true;
	end

	if(tonumber(ui.entry.text) == 15) then
		ch[0].active = true;
		ch[1].active = true;
		ch[2].active = true;
		ch[3].active = true;
	end

	else
		--!?!??! KAPUT !!!
	end
end

function update()
	x = 0
	y = 0
	z = 0
	if ui.chk_x.active == true then x = 1 end
	if ui.chk_y.active == true then y = 1 end
	if ui.chk_z.active == true then z = 1 end

	v = x + y * 2 + z * 4
	opt[v + 1].active = true

	ui.lab_val.label = v
end

function ui.chk_x:on_clicked(...)   -- !&!&!&!
	update()
end

function ui.chk_y:on_clicked(...)
	update()
end

function ui.chk_z:on_clicked(...)
	update()
end

ui.wnd.title = 'lab-03-Pogodin-473'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

gtk.main() -- zapusk cicla obrabotki sobitij interface	
