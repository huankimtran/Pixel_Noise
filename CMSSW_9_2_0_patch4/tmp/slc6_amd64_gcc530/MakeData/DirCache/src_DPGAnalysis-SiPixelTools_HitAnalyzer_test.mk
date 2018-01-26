ifeq ($(strip $(testPixels)),)
testPixels := self/src/DPGAnalysis-SiPixelTools/HitAnalyzer/test
testPixels_files := $(patsubst src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/BuildFile.))))
testPixels_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/BuildFile
testPixels_LOC_USE := self cmssw FWCore/Framework SimDataFormats/TrackingHit SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts Geometry/TrackerNumberingBuilder Geometry/Records Geometry/TrackerGeometryBuilder CondFormats/SiPixelObjects TrackingTools/TransientTrack GeneratorInterface/Core CommonTools/UtilAlgos root heppdt SimGeneral/HepPDTRecord MagneticField/Records MagneticField/Engine DataFormats/FEDRawData EventFilter/SiPixelRawToDigi
testPixels_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testPixels,testPixels,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/HitAnalyzer/test))
testPixels_PACKAGE := self/src/DPGAnalysis-SiPixelTools/HitAnalyzer/test
ALL_PRODS += testPixels
testPixels_INIT_FUNC        += $$(eval $$(call Library,testPixels,src/DPGAnalysis-SiPixelTools/HitAnalyzer/test,src_DPGAnalysis-SiPixelTools_HitAnalyzer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
testPixels_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testPixels,src/DPGAnalysis-SiPixelTools/HitAnalyzer/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_HitAnalyzer_test
src_DPGAnalysis-SiPixelTools_HitAnalyzer_test_parent := DPGAnalysis-SiPixelTools/HitAnalyzer
src_DPGAnalysis-SiPixelTools_HitAnalyzer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_HitAnalyzer_test,src/DPGAnalysis-SiPixelTools/HitAnalyzer/test,TEST))
