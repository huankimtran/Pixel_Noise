ifeq ($(strip $(DPGAnalysis-SiPixelTools/PixelHitAssociator)),)
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelHitAssociator_src
src_DPGAnalysis-SiPixelTools_PixelHitAssociator_src_parent := DPGAnalysis-SiPixelTools/PixelHitAssociator
src_DPGAnalysis-SiPixelTools_PixelHitAssociator_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelHitAssociator_src,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/src,LIBRARY))
DPGAnalysis-SiPixelToolsPixelHitAssociator := self/DPGAnalysis-SiPixelTools/PixelHitAssociator
DPGAnalysis-SiPixelTools/PixelHitAssociator := DPGAnalysis-SiPixelToolsPixelHitAssociator
DPGAnalysis-SiPixelToolsPixelHitAssociator_files := $(patsubst src/DPGAnalysis-SiPixelTools/PixelHitAssociator/src/%,%,$(wildcard $(foreach dir,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DPGAnalysis-SiPixelToolsPixelHitAssociator_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/PixelHitAssociator/BuildFile
DPGAnalysis-SiPixelToolsPixelHitAssociator_LOC_USE := self cmssw SimTracker/Common DataFormats/TrackerRecHit2D TrackingTools/TransientTrackingRecHit
DPGAnalysis-SiPixelToolsPixelHitAssociator_EX_LIB   := DPGAnalysis-SiPixelToolsPixelHitAssociator
DPGAnalysis-SiPixelToolsPixelHitAssociator_EX_USE   := $(foreach d,$(DPGAnalysis-SiPixelToolsPixelHitAssociator_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DPGAnalysis-SiPixelToolsPixelHitAssociator_PACKAGE := self/src/DPGAnalysis-SiPixelTools/PixelHitAssociator/src
ALL_PRODS += DPGAnalysis-SiPixelToolsPixelHitAssociator
DPGAnalysis-SiPixelToolsPixelHitAssociator_CLASS := LIBRARY
DPGAnalysis-SiPixelTools/PixelHitAssociator_forbigobj+=DPGAnalysis-SiPixelToolsPixelHitAssociator
DPGAnalysis-SiPixelToolsPixelHitAssociator_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysis-SiPixelToolsPixelHitAssociator,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/src,src_DPGAnalysis-SiPixelTools_PixelHitAssociator_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
