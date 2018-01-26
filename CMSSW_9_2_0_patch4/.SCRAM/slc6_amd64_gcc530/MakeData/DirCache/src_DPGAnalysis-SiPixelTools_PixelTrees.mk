ifeq ($(strip $(DPGAnalysis-SiPixelTools/PixelTrees)),)
src_DPGAnalysis-SiPixelTools_PixelTrees := self/DPGAnalysis-SiPixelTools/PixelTrees
DPGAnalysis-SiPixelTools/PixelTrees  := src_DPGAnalysis-SiPixelTools_PixelTrees
src_DPGAnalysis-SiPixelTools_PixelTrees_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/PixelTrees/BuildFile
src_DPGAnalysis-SiPixelTools_PixelTrees_LOC_USE := TrackingTools/TrajectoryState clhep Geometry/TrackerNumberingBuilder boost FWCore/Framework self DataFormats/VertexReco DataFormats/DetId TrackingTools/TrackFitters DataFormats/L1GlobalMuonTrigger DataFormats/SiStripDetId CondFormats/DataRecord FWCore/PluginManager DataFormats/TrajectorySeed Geometry/Records DataFormats/L1GlobalTrigger Alignment/OfflineValidation SimTracker/TrackerHitAssociation DataFormats/TrackerRecHit2D DataFormats/DTDigi DataFormats/FEDRawData DataFormats/L1Trigger TrackingTools/TransientTrack DataFormats/L1DTTrackFinder cmssw root DataFormats/SiPixelDetId Geometry/TrackerGeometryBuilder DataFormats/LTCDigi DataFormats/TrackReco DataFormats/MuonDetId DataFormats/MuonReco CondFormats/L1TObjects DataFormats/TrackingRecHit DataFormats/SiStripCluster FWCore/ParameterSet
src_DPGAnalysis-SiPixelTools_PixelTrees_EX_USE   := $(foreach d,$(src_DPGAnalysis-SiPixelTools_PixelTrees_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_DPGAnalysis-SiPixelTools_PixelTrees
src_DPGAnalysis-SiPixelTools_PixelTrees_INIT_FUNC += $$(eval $$(call EmptyPackage,src_DPGAnalysis-SiPixelTools_PixelTrees,src/DPGAnalysis-SiPixelTools/PixelTrees))
endif

