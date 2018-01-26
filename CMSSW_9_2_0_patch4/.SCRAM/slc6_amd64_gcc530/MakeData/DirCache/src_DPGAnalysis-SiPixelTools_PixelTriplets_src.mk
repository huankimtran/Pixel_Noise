ifeq ($(strip $(DPGAnalysis-SiPixelTools/PixelTriplets)),)
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelTriplets_src
src_DPGAnalysis-SiPixelTools_PixelTriplets_src_parent := DPGAnalysis-SiPixelTools/PixelTriplets
src_DPGAnalysis-SiPixelTools_PixelTriplets_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelTriplets_src,src/DPGAnalysis-SiPixelTools/PixelTriplets/src,LIBRARY))
DPGAnalysis-SiPixelToolsPixelTriplets := self/DPGAnalysis-SiPixelTools/PixelTriplets
DPGAnalysis-SiPixelTools/PixelTriplets := DPGAnalysis-SiPixelToolsPixelTriplets
DPGAnalysis-SiPixelToolsPixelTriplets_files := $(patsubst src/DPGAnalysis-SiPixelTools/PixelTriplets/src/%,%,$(wildcard $(foreach dir,src/DPGAnalysis-SiPixelTools/PixelTriplets/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DPGAnalysis-SiPixelToolsPixelTriplets_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/PixelTriplets/BuildFile
DPGAnalysis-SiPixelToolsPixelTriplets_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CondFormats/SiPixelObjects CommonTools/UtilAlgos DataFormats/VertexReco DataFormats/METReco TrackingTools/Records Geometry/TrackerGeometryBuilder TrackingTools/TransientTrack TrackingTools/MaterialEffects TrackingTools/TrackFitters TrackingTools/TransientTrackingRecHit RecoTracker/TransientTrackingRecHit HLTrigger/HLTcore
DPGAnalysis-SiPixelToolsPixelTriplets_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DPGAnalysis-SiPixelToolsPixelTriplets,DPGAnalysis-SiPixelToolsPixelTriplets,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/PixelTriplets/src))
DPGAnalysis-SiPixelToolsPixelTriplets_PACKAGE := self/src/DPGAnalysis-SiPixelTools/PixelTriplets/src
ALL_PRODS += DPGAnalysis-SiPixelToolsPixelTriplets
DPGAnalysis-SiPixelToolsPixelTriplets_CLASS := LIBRARY
DPGAnalysis-SiPixelTools/PixelTriplets_forbigobj+=DPGAnalysis-SiPixelToolsPixelTriplets
DPGAnalysis-SiPixelToolsPixelTriplets_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysis-SiPixelToolsPixelTriplets,src/DPGAnalysis-SiPixelTools/PixelTriplets/src,src_DPGAnalysis-SiPixelTools_PixelTriplets_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
