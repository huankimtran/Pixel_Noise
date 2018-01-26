ifeq ($(strip $(SiPixelLorentzAngleTest)),)
SiPixelLorentzAngleTest := self/src/DPGAnalysis-SiPixelTools/LA-Calibration/test
SiPixelLorentzAngleTest_files := $(patsubst src/DPGAnalysis-SiPixelTools/LA-Calibration/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/LA-Calibration/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/LA-Calibration/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/LA-Calibration/test/BuildFile.))))
SiPixelLorentzAngleTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/LA-Calibration/test/BuildFile
SiPixelLorentzAngleTest_LOC_USE := self cmssw CommonTools/UtilAlgos CondFormats/DataRecord CondFormats/SiPixelObjects FWCore/Framework DataFormats/Common FWCore/ParameterSet clhep boost
SiPixelLorentzAngleTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SiPixelLorentzAngleTest,SiPixelLorentzAngleTest,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/LA-Calibration/test))
SiPixelLorentzAngleTest_PACKAGE := self/src/DPGAnalysis-SiPixelTools/LA-Calibration/test
ALL_PRODS += SiPixelLorentzAngleTest
SiPixelLorentzAngleTest_INIT_FUNC        += $$(eval $$(call Library,SiPixelLorentzAngleTest,src/DPGAnalysis-SiPixelTools/LA-Calibration/test,src_DPGAnalysis-SiPixelTools_LA-Calibration_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
SiPixelLorentzAngleTest_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,SiPixelLorentzAngleTest,src/DPGAnalysis-SiPixelTools/LA-Calibration/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_LA-Calibration_test
src_DPGAnalysis-SiPixelTools_LA-Calibration_test_parent := DPGAnalysis-SiPixelTools/LA-Calibration
src_DPGAnalysis-SiPixelTools_LA-Calibration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_LA-Calibration_test,src/DPGAnalysis-SiPixelTools/LA-Calibration/test,TEST))
