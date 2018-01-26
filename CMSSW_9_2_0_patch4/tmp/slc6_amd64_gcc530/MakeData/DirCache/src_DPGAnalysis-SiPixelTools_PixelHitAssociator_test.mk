ifeq ($(strip $(SiPixelRecHitsValid_pix)),)
SiPixelRecHitsValid_pix := self/src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test
SiPixelRecHitsValid_pix_files := $(patsubst src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test/%,%,$(foreach file,SiPixelRecHitsValid_pix.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test/BuildFile.))))
SiPixelRecHitsValid_pix_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test/BuildFile
SiPixelRecHitsValid_pix_LOC_USE := self cmssw boost root FWCore/Framework FWCore/ParameterSet DataFormats/SiPixelDigi DataFormats/SiPixelDetId DataFormats/DetId Geometry/Records Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder CommonTools/UtilAlgos SimDataFormats/TrackingHit SimDataFormats/TrackerDigiSimLink SimDataFormats/CrossingFrame DQMServices/Core DataFormats/TrackerRecHit2D TrackingTools/TransientTrackingRecHit DPGAnalysis-SiPixelTools/PixelHitAssociator SimTracker/TrackerHitAssociation
SiPixelRecHitsValid_pix_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SiPixelRecHitsValid_pix,SiPixelRecHitsValid_pix,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test))
SiPixelRecHitsValid_pix_PACKAGE := self/src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test
ALL_PRODS += SiPixelRecHitsValid_pix
SiPixelRecHitsValid_pix_INIT_FUNC        += $$(eval $$(call Library,SiPixelRecHitsValid_pix,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test,src_DPGAnalysis-SiPixelTools_PixelHitAssociator_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
SiPixelRecHitsValid_pix_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,SiPixelRecHitsValid_pix,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelHitAssociator_test
src_DPGAnalysis-SiPixelTools_PixelHitAssociator_test_parent := DPGAnalysis-SiPixelTools/PixelHitAssociator
src_DPGAnalysis-SiPixelTools_PixelHitAssociator_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelHitAssociator_test,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/test,TEST))
