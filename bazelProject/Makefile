EXECUTABLE = groundstate
TEST = physicsLibTest

.PHONY: tests
.PHONY: executable

deploy: tests executable
	cp -f bazel-bin/$(EXECUTABLE) ../

tests:
	bazel test //tests:$(TEST)

executable:
	bazel build //:$(EXECUTABLE)
