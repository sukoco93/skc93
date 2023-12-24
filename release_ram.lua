module("luci.controller.release_ram",package.seeall)
function index()
	entry({"admin","status","release_ram"}, call("release_ram"), _("Release Ram"), 6)
end
function release_ram()
	luci.sys.call("/sbin/free.sh >/dev/null 2>&1")
	luci.http.redirect(luci.dispatcher.build_url("admin/status"))
end