CMAKEPROJECT = cmakeProject
BAZELPROJECT = bazelProject
BUILDDIR = build
LIBDIR = lib
LIBSUFFIX = Lib

all: $(CMAKEPROJECT)$(LIBSUFFIX) groundstate

$(CMAKEPROJECT)$(LIBSUFFIX): $(CMAKEPROJECT)/$(BUILDDIR)
	cd $(CMAKEPROJECT)/$(BUILDDIR) && cmake .. && make

$(CMAKEPROJECT)/$(BUILDDIR):
	mkdir -p $(CMAKEPROJECT)/$(BUILDDIR)

groundstate:
	$(MAKE) -C $(BAZELPROJECT)

clean:
	rm -rf $(CMAKEPROJECT)/$(BUILDDIR)
	rm -rf $(CMAKEPROJECT)/$(LIBDIR)
	rm -rf $(CMAKEPROJECT)$(LIBSUFFIX)
	rm -f groundstate
