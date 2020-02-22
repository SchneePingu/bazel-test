all:
	cd PackageA && cmake . && make && mkdir -p ../LibPackageA && mkdir -p ../LibPackageA/libs && cp -r include ../LibPackageA && cp -r libPackageA.a ../LibPackageA/libs && cd ../PackageB && bazel build ... && bazel test tests && bazel run main
