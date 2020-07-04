all: PhysicsLib groundstate

PhysicsLib: Physics/build
	cd Physics/build && cmake .. && make

Physics/build:
	mkdir -p Physics/build

groundstate:
	$(MAKE) -C PackageB

clean:
	rm -fr Physics/{build,lib}
	rm -fr PhysicsLib
	rm -f groundstate
