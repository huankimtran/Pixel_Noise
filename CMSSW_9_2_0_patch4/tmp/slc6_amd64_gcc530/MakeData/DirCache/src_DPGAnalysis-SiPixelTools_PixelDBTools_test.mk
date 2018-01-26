ifeq ($(strip $(PixelDBTools_test)),)
PixelDBTools_test := self/src/DPGAnalysis-SiPixelTools/PixelDBTools/test
PixelDBTools_test_files := $(patsubst src/DPGAnalysis-SiPixelTools/PixelDBTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/PixelDBTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/PixelDBTools/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/PixelDBTools/test/BuildFile.))))
PixelDBTools_test_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/PixelDBTools/test/BuildFile
PixelDBTools_test_LOC_USE := self cmssw boost root CommonTools/UtilAlgos Geometry/Records Geometry/TrackerGeometryBuilder CondCore/DBOutputService CondTools/SiPixel CalibTracker/SiPixelESProducers RecoLocalTracker/SiPixelRecHits CalibTracker/SiPixelConnectivity DQM/SiPixelPhase1Common
PixelDBTools_test_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PixelDBTools_test,PixelDBTools_test,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/PixelDBTools/test))
PixelDBTools_test_PACKAGE := self/src/DPGAnalysis-SiPixelTools/PixelDBTools/test
ALL_PRODS += PixelDBTools_test
PixelDBTools_test_INIT_FUNC        += $$(eval $$(call Library,PixelDBTools_test,src/DPGAnalysis-SiPixelTools/PixelDBTools/test,src_DPGAnalysis-SiPixelTools_PixelDBTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
PixelDBTools_test_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PixelDBTools_test,src/DPGAnalysis-SiPixelTools/PixelDBTools/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelDBTools_test
src_DPGAnalysis-SiPixelTools_PixelDBTools_test_parent := DPGAnalysis-SiPixelTools/PixelDBTools
src_DPGAnalysis-SiPixelTools_PixelDBTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelDBTools_test,src/DPGAnalysis-SiPixelTools/PixelDBTools/test,TEST))
