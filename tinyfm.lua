module("luci.controller.tinyfm", package.seeall)
function index()
entry({"admin","system","tinyfm"}, template("tinyfm"), _("File Explorer"), 47).leaf=true
end