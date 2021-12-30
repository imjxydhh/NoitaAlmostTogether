module = {}

module.test = 1

function module.HelloWorld()	
	print("hello world" .. module.test)
end

return module