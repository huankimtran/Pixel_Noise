ifeq ($(strip $(Pilot)),)
Pilot := self/src/DPGAnalysis-SiPixelTools/Pilot/test
Pilot_files := $(patsubst src/DPGAnalysis-SiPixelTools/Pilot/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/Pilot/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/Pilot/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/Pilot/test/BuildFile.))))
Pilot_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/Pilot/test/BuildFile
Pilot_LOC_USE := self cmssw FWCore/Framework SimDataFormats/TrackingHit SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts Geometry/TrackerNumberingBuilder Geometry/Records Geometry/TrackerGeometryBuilder CondFormats/SiPixelObjects TrackingTools/TransientTrack GeneratorInterface/Core CommonTools/UtilAlgos root heppdt SimGeneral/HepPDTRecord MagneticField/Records MagneticField/Engine DataFormats/FEDRawData EventFilter/SiPixelRawToDigi
Pilot_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,Pilot,Pilot,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/Pilot/test))
Pilot_PACKAGE := self/src/DPGAnalysis-SiPixelTools/Pilot/test
ALL_PRODS += Pilot
Pilot_INIT_FUNC        += $$(eval $$(call Library,Pilot,src/DPGAnalysis-SiPixelTools/Pilot/test,src_DPGAnalysis-SiPixelTools_Pilot_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
Pilot_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,Pilot,src/DPGAnalysis-SiPixelTools/Pilot/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_Pilot_test
src_DPGAnalysis-SiPixelTools_Pilot_test_parent := DPGAnalysis-SiPixelTools/Pilot
src_DPGAnalysis-SiPixelTools_Pilot_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_Pilot_test,src/DPGAnalysis-SiPixelTools/Pilot/test,TEST))
