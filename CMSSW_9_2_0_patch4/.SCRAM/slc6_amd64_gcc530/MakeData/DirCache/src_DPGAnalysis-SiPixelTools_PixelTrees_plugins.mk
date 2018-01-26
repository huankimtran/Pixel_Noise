ifeq ($(strip $(DPGAnalysisSiPixelToolsPlugin)),)
DPGAnalysisSiPixelToolsPlugin := self/src/DPGAnalysis-SiPixelTools/PixelTrees/plugins
PLUGINS:=yes
DPGAnalysisSiPixelToolsPlugin_files := $(patsubst src/DPGAnalysis-SiPixelTools/PixelTrees/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/PixelTrees/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/PixelTrees/plugins/$(file). Please fix src/DPGAnalysis-SiPixelTools/PixelTrees/plugins/BuildFile.))))
DPGAnalysisSiPixelToolsPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/PixelTrees/plugins/BuildFile
DPGAnalysisSiPixelToolsPlugin_LOC_USE := self cmssw Alignment/CommonAlignment Alignment/OfflineValidation CondFormats/DataRecord CondFormats/L1TObjects CondFormats/RunInfo DQM/SiStripCommon DataFormats/Common DataFormats/DetId DataFormats/HLTReco DataFormats/L1GlobalMuonTrigger DataFormats/L1GlobalTrigger DataFormats/Luminosity DataFormats/Math DataFormats/MuonDetId DataFormats/MuonReco DataFormats/Provenance DataFormats/SiPixelCluster DataFormats/SiPixelDetId DataFormats/SiStripCluster DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry Geometry/Records Geometry/TrackerGeometryBuilder HLTrigger/HLTcore L1Trigger/GlobalTriggerAnalyzer MagneticField/Engine MagneticField/Records MagneticField/UniformEngine PhysicsTools/UtilAlgos RecoMuon/GlobalTrackingTools SimDataFormats/Track SimDataFormats/TrackingHit SimTracker/TrackerHitAssociation TrackingTools/PatternTools TrackingTools/TrackAssociator TrackingTools/TrackFitters TrackingTools/TrajectoryState TrackingTools/TransientTrack roothistmatrix
DPGAnalysisSiPixelToolsPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DPGAnalysisSiPixelToolsPlugin,DPGAnalysisSiPixelToolsPlugin,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/PixelTrees/plugins))
DPGAnalysisSiPixelToolsPlugin_PACKAGE := self/src/DPGAnalysis-SiPixelTools/PixelTrees/plugins
ALL_PRODS += DPGAnalysisSiPixelToolsPlugin
DPGAnalysis-SiPixelTools/PixelTrees_forbigobj+=DPGAnalysisSiPixelToolsPlugin
DPGAnalysisSiPixelToolsPlugin_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysisSiPixelToolsPlugin,src/DPGAnalysis-SiPixelTools/PixelTrees/plugins,src_DPGAnalysis-SiPixelTools_PixelTrees_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
DPGAnalysisSiPixelToolsPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,DPGAnalysisSiPixelToolsPlugin,src/DPGAnalysis-SiPixelTools/PixelTrees/plugins))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelTrees_plugins
src_DPGAnalysis-SiPixelTools_PixelTrees_plugins_parent := DPGAnalysis-SiPixelTools/PixelTrees
src_DPGAnalysis-SiPixelTools_PixelTrees_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelTrees_plugins,src/DPGAnalysis-SiPixelTools/PixelTrees/plugins,PLUGINS))
