require "mods.my_first_mod.files.scripts.test_module"
-- ffi = require("ffi")

module = {}

module.test = 1

function module.HelloWorld()	
	print("hello world" .. module.test)
	test_module.fooFun1()
	-- ffi.cdef[[
		-- int printf(const char* fmt, ...);
	-- ]]

	-- ffi.C.printf()
end


return module