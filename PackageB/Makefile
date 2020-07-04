.PHONY: tests
.PHONY: executable

deploy: tests executable
	cp -f bazel-bin/main ../groundstate

tests:
	bazel test //tests:tests

executable:
	bazel build //:main
