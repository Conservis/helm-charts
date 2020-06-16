ROOT := $(PWD)

create:
	test $(name)
	cd charts && helm create --starter=$(ROOT)/starter $(name)