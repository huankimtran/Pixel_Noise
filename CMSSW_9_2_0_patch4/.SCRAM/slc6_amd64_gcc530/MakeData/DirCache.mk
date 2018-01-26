ifeq ($(strip $(CalibTrackerSiPixelGainCalibrationPlugin)),)
CalibTrackerSiPixelGainCalibrationPlugin := self/src/DPGAnalysis-SiPixelTools/GainCalibration/plugins
PLUGINS:=yes
CalibTrackerSiPixelGainCalibrationPlugin_files := $(patsubst src/DPGAnalysis-SiPixelTools/GainCalibration/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/GainCalibration/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/GainCalibration/plugins/$(file). Please fix src/DPGAnalysis-SiPixelTools/GainCalibration/plugins/BuildFile.))))
CalibTrackerSiPixelGainCalibrationPlugin_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/GainCalibration/plugins/BuildFile
CalibTrackerSiPixelGainCalibrationPlugin_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry DataFormats/FEDRawData DataFormats/SiPixelDigi DataFormats/SiPixelRawData CalibTracker/SiPixelESProducers CondFormats/DataRecord CondFormats/SiPixelObjects CondCore/DBOutputService PhysicsTools/UtilAlgos root rootminuit Geometry/Records Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder CalibFormats/SiPixelObjects CalibTracker/SiPixelTools
CalibTrackerSiPixelGainCalibrationPlugin_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CalibTrackerSiPixelGainCalibrationPlugin,CalibTrackerSiPixelGainCalibrationPlugin,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/GainCalibration/plugins))
CalibTrackerSiPixelGainCalibrationPlugin_PACKAGE := self/src/DPGAnalysis-SiPixelTools/GainCalibration/plugins
ALL_PRODS += CalibTrackerSiPixelGainCalibrationPlugin
DPGAnalysis-SiPixelTools/GainCalibration_forbigobj+=CalibTrackerSiPixelGainCalibrationPlugin
CalibTrackerSiPixelGainCalibrationPlugin_INIT_FUNC        += $$(eval $$(call Library,CalibTrackerSiPixelGainCalibrationPlugin,src/DPGAnalysis-SiPixelTools/GainCalibration/plugins,src_DPGAnalysis-SiPixelTools_GainCalibration_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
CalibTrackerSiPixelGainCalibrationPlugin_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,CalibTrackerSiPixelGainCalibrationPlugin,src/DPGAnalysis-SiPixelTools/GainCalibration/plugins))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_GainCalibration_plugins
src_DPGAnalysis-SiPixelTools_GainCalibration_plugins_parent := DPGAnalysis-SiPixelTools/GainCalibration
src_DPGAnalysis-SiPixelTools_GainCalibration_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_GainCalibration_plugins,src/DPGAnalysis-SiPixelTools/GainCalibration/plugins,PLUGINS))
ifeq ($(strip $(DPGAnalysis-SiPixelTools/LA-Calibration)),)
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_LA-Calibration_src
src_DPGAnalysis-SiPixelTools_LA-Calibration_src_parent := DPGAnalysis-SiPixelTools/LA-Calibration
src_DPGAnalysis-SiPixelTools_LA-Calibration_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_LA-Calibration_src,src/DPGAnalysis-SiPixelTools/LA-Calibration/src,LIBRARY))
DPGAnalysis-SiPixelToolsLA-Calibration := self/DPGAnalysis-SiPixelTools/LA-Calibration
DPGAnalysis-SiPixelTools/LA-Calibration := DPGAnalysis-SiPixelToolsLA-Calibration
DPGAnalysis-SiPixelToolsLA-Calibration_files := $(patsubst src/DPGAnalysis-SiPixelTools/LA-Calibration/src/%,%,$(wildcard $(foreach dir,src/DPGAnalysis-SiPixelTools/LA-Calibration/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DPGAnalysis-SiPixelToolsLA-Calibration_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/LA-Calibration/BuildFile
DPGAnalysis-SiPixelToolsLA-Calibration_LOC_USE := self cmssw FWCore/Framework DataFormats/Common FWCore/ParameterSet RecoTracker/TkSeedGenerator TrackingTools/TrackFitters TrackingTools/TransientTrack Geometry/TrackerGeometryBuilder Geometry/Records SimTracker/TrackerHitAssociation MagneticField/Records MagneticField/VolumeBasedEngine root clhep boost CondCore/DBOutputService CondFormats/SiPixelObjects
DPGAnalysis-SiPixelToolsLA-Calibration_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DPGAnalysis-SiPixelToolsLA-Calibration,DPGAnalysis-SiPixelToolsLA-Calibration,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/LA-Calibration/src))
DPGAnalysis-SiPixelToolsLA-Calibration_PACKAGE := self/src/DPGAnalysis-SiPixelTools/LA-Calibration/src
ALL_PRODS += DPGAnalysis-SiPixelToolsLA-Calibration
DPGAnalysis-SiPixelToolsLA-Calibration_CLASS := LIBRARY
DPGAnalysis-SiPixelTools/LA-Calibration_forbigobj+=DPGAnalysis-SiPixelToolsLA-Calibration
DPGAnalysis-SiPixelToolsLA-Calibration_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysis-SiPixelToolsLA-Calibration,src/DPGAnalysis-SiPixelTools/LA-Calibration/src,src_DPGAnalysis-SiPixelTools_LA-Calibration_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
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
ifeq ($(strip $(DPGAnalysis-SiPixelTools/PixelTrees)),)
src_DPGAnalysis-SiPixelTools_PixelTrees := self/DPGAnalysis-SiPixelTools/PixelTrees
DPGAnalysis-SiPixelTools/PixelTrees  := src_DPGAnalysis-SiPixelTools_PixelTrees
src_DPGAnalysis-SiPixelTools_PixelTrees_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/PixelTrees/BuildFile
src_DPGAnalysis-SiPixelTools_PixelTrees_LOC_USE := TrackingTools/TrajectoryState clhep Geometry/TrackerNumberingBuilder boost FWCore/Framework self DataFormats/VertexReco DataFormats/DetId TrackingTools/TrackFitters DataFormats/L1GlobalMuonTrigger DataFormats/SiStripDetId CondFormats/DataRecord FWCore/PluginManager DataFormats/TrajectorySeed Geometry/Records DataFormats/L1GlobalTrigger Alignment/OfflineValidation SimTracker/TrackerHitAssociation DataFormats/TrackerRecHit2D DataFormats/DTDigi DataFormats/FEDRawData DataFormats/L1Trigger TrackingTools/TransientTrack DataFormats/L1DTTrackFinder cmssw root DataFormats/SiPixelDetId Geometry/TrackerGeometryBuilder DataFormats/LTCDigi DataFormats/TrackReco DataFormats/MuonDetId DataFormats/MuonReco CondFormats/L1TObjects DataFormats/TrackingRecHit DataFormats/SiStripCluster FWCore/ParameterSet
src_DPGAnalysis-SiPixelTools_PixelTrees_EX_USE   := $(foreach d,$(src_DPGAnalysis-SiPixelTools_PixelTrees_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_DPGAnalysis-SiPixelTools_PixelTrees
src_DPGAnalysis-SiPixelTools_PixelTrees_INIT_FUNC += $$(eval $$(call EmptyPackage,src_DPGAnalysis-SiPixelTools_PixelTrees,src/DPGAnalysis-SiPixelTools/PixelTrees))
endif

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
ifeq ($(strip $(JamesDigitizer/Digitizer)),)
src_JamesDigitizer_Digitizer := self/JamesDigitizer/Digitizer
JamesDigitizer/Digitizer  := src_JamesDigitizer_Digitizer
src_JamesDigitizer_Digitizer_BuildFile    := $(WORKINGDIR)/cache/bf/src/JamesDigitizer/Digitizer/BuildFile
src_JamesDigitizer_Digitizer_LOC_USE := boost FWCore/Framework self DataFormats/DetId cmssw RecoLocalTracker/SiPixelRecHits DataFormats/SiPixelDigi SimDataFormats/CrossingFrame Geometry/CommonDetUnit SimDataFormats/TrackingHit root DataFormats/SiPixelDetId FWCore/PluginManager Geometry/TrackerGeometryBuilder DataFormats/Common Geometry/Records CommonTools/UtilAlgos SimDataFormats/TrackerDigiSimLink FWCore/ServiceRegistry SimTracker/TrackerHitAssociation FWCore/ParameterSet
src_JamesDigitizer_Digitizer_EX_USE   := $(foreach d,$(src_JamesDigitizer_Digitizer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_JamesDigitizer_Digitizer
src_JamesDigitizer_Digitizer_INIT_FUNC += $$(eval $$(call EmptyPackage,src_JamesDigitizer_Digitizer,src/JamesDigitizer/Digitizer))
endif

ifeq ($(strip $(JamesDigitizerGeorgeAuto)),)
JamesDigitizerGeorgeAuto := self/src/JamesDigitizer/George/plugins
PLUGINS:=yes
JamesDigitizerGeorgeAuto_files := $(patsubst src/JamesDigitizer/George/plugins/%,%,$(wildcard $(foreach dir,src/JamesDigitizer/George/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JamesDigitizerGeorgeAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/JamesDigitizer/George/plugins/BuildFile
JamesDigitizerGeorgeAuto_LOC_USE := self cmssw root boost FWCore/Framework FWCore/ParameterSet FWCore/PluginManager SimDataFormats/TrackingHit SimDataFormats/TrackerDigiSimLink SimDataFormats/CrossingFrame DataFormats/Common DataFormats/SiPixelDigi DataFormats/SiPixelDetId DataFormats/DetId Geometry/Records Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder CommonTools/UtilAlgos FWCore/ServiceRegistry SimTracker/TrackerHitAssociation RecoLocalTracker/SiPixelRecHits
JamesDigitizerGeorgeAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JamesDigitizerGeorgeAuto,JamesDigitizerGeorgeAuto,$(SCRAMSTORENAME_LIB),src/JamesDigitizer/George/plugins))
JamesDigitizerGeorgeAuto_PACKAGE := self/src/JamesDigitizer/George/plugins
ALL_PRODS += JamesDigitizerGeorgeAuto
JamesDigitizer/George_forbigobj+=JamesDigitizerGeorgeAuto
JamesDigitizerGeorgeAuto_INIT_FUNC        += $$(eval $$(call Library,JamesDigitizerGeorgeAuto,src/JamesDigitizer/George/plugins,src_JamesDigitizer_George_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
JamesDigitizerGeorgeAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,JamesDigitizerGeorgeAuto,src/JamesDigitizer/George/plugins))
endif
ALL_COMMONRULES += src_JamesDigitizer_George_plugins
src_JamesDigitizer_George_plugins_parent := JamesDigitizer/George
src_JamesDigitizer_George_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JamesDigitizer_George_plugins,src/JamesDigitizer/George/plugins,PLUGINS))
