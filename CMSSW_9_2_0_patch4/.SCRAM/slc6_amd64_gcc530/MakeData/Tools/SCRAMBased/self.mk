ifeq ($(strip $(RecoPixelVertexingPixelTrackFittingPlugins)),)
RecoPixelVertexingPixelTrackFittingPlugins := self/src/RecoPixelVertexing/PixelTrackFitting/plugins
RecoPixelVertexingPixelTrackFittingPlugins_LOC_USE := self cmssw RecoPixelVertexing/PixelTrackFitting
RecoPixelVertexing/PixelTrackFitting_relbigobj+=RecoPixelVertexingPixelTrackFittingPlugins
endif
ifeq ($(strip $(RecoEgamma/EgammaElectronAlgos)),)
RecoEgammaEgammaElectronAlgos := self/RecoEgamma/EgammaElectronAlgos
RecoEgamma/EgammaElectronAlgos := RecoEgammaEgammaElectronAlgos
RecoEgammaEgammaElectronAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaElectronAlgos_LOC_FLAGS_CXXFLAGS   := -Ofast
RecoEgammaEgammaElectronAlgos_EX_USE := $(foreach d, self cmssw TrackingTools/MaterialEffects FWCore/Framework FWCore/ParameterSet clhep MagneticField/Engine DataFormats/DetId DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/GsfTrackReco DataFormats/TrackReco DataFormats/TrackerCommon DataFormats/EgammaReco DataFormats/EgammaCandidates DataFormats/CaloRecHit Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder Geometry/CaloGeometry RecoTracker/MeasurementDet RecoTracker/TkSeedGenerator RecoTracker/TkDetLayers TrackingTools/DetLayers TrackingTools/GsfTools TrackingTools/GsfTracking RecoTracker/TrackProducer DataFormats/HcalRecHit RecoCaloTools/Selectors RecoLocalCalo/HGCalRecAlgos RecoEcal/EgammaCoreTools RecoEgamma/EgammaTools RecoEgamma/EgammaIsolationAlgos RecoEgamma/ElectronIdentification TrackingTools/MeasurementDet RecoTracker/TkTrackingRegions CondFormats/EgammaObjects CondFormats/DataRecord,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEgammaEgammaElectronAlgos_EX_LIB   := RecoEgammaEgammaElectronAlgos
ALL_EXTERNAL_PRODS += RecoEgammaEgammaElectronAlgos
RecoEgammaEgammaElectronAlgos_CLASS := LIBRARY
RecoEgamma/EgammaElectronAlgos_relbigobj+=RecoEgammaEgammaElectronAlgos
endif
ifeq ($(strip $(DQM/Integration)),)
src_DQM_Integration := self/DQM/Integration
DQM/Integration  := src_DQM_Integration
src_DQM_Integration_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_DQM_Integration_EX_USE := $(foreach d, FWCore/Catalog RelationalAccess DataFormats/Provenance FWCore/Framework self cmssw CoralBase FWCore/ServiceRegistry FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_DQM_Integration
endif

ifeq ($(strip $(Calibration/HcalAlCaRecoProducers)),)
CalibrationHcalAlCaRecoProducers := self/Calibration/HcalAlCaRecoProducers
Calibration/HcalAlCaRecoProducers := CalibrationHcalAlCaRecoProducers
CalibrationHcalAlCaRecoProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationHcalAlCaRecoProducers_EX_USE := $(foreach d, self cmssw CalibFormats/HcalObjects Calibration/IsolatedParticles CommonTools/UtilAlgos CondFormats/DataRecord CondFormats/EcalObjects CondFormats/HcalObjects DataFormats/CaloTowers DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalDigi DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/FEDRawData DataFormats/HcalCalibObjects DataFormats/HcalDigi DataFormats/HcalIsolatedTrack DataFormats/HcalRecHit DataFormats/JetReco DataFormats/L1GlobalTrigger DataFormats/Luminosity DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/RecoCandidate Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo HLTrigger/HLTcore FWCore/Framework FWCore/ParameterSet FWCore/PluginManager RecoLocalCalo/EcalRecAlgos RecoEcal/EgammaClusterAlgos RecoEcal/EgammaCoreTools RecoLocalCalo/HcalRecAlgos TrackingTools/TrackAssociator TrackPropagation/SteppingHelixPropagator DataFormats/Scalers boost clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += CalibrationHcalAlCaRecoProducers
CalibrationHcalAlCaRecoProducers_CLASS := LIBRARY
Calibration/HcalAlCaRecoProducers_relbigobj+=CalibrationHcalAlCaRecoProducers
endif
ifeq ($(strip $(CalibrationHcalAlCaRecoProducersPlugins)),)
CalibrationHcalAlCaRecoProducersPlugins := self/src/Calibration/HcalAlCaRecoProducers/plugins
CalibrationHcalAlCaRecoProducersPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet HLTrigger/HLTcore Calibration/IsolatedParticles DataFormats/EgammaReco DataFormats/JetReco rootphysics
Calibration/HcalAlCaRecoProducers_relbigobj+=CalibrationHcalAlCaRecoProducersPlugins
endif
ifeq ($(strip $(RecoEgammaEgammaElectronProducersPlugins)),)
RecoEgammaEgammaElectronProducersPlugins := self/src/RecoEgamma/EgammaElectronProducers/plugins
RecoEgammaEgammaElectronProducersPlugins_LOC_USE := self cmssw RecoEgamma/EgammaElectronAlgos RecoEgamma/EgammaIsolationAlgos RecoTracker/CkfPattern RecoTracker/TrackProducer CommonTools/CandAlgos Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records FWCore/Framework FWCore/ParameterSet FWCore/PluginManager DataFormats/EgammaCandidates DataFormats/DetId DataFormats/SiPixelCluster DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/ParticleFlowCandidate hepmc clhep root
RecoEgamma/EgammaElectronProducers_relbigobj+=RecoEgammaEgammaElectronProducersPlugins
endif
ifeq ($(strip $(HLTriggerJSONMonitoringPlugins)),)
HLTriggerJSONMonitoringPlugins := self/src/HLTrigger/JSONMonitoring/plugins
HLTriggerJSONMonitoringPlugins_LOC_USE := self cmssw FWCore/PrescaleService FWCore/ServiceRegistry FWCore/Utilities HLTrigger/HLTcore EventFilter/Utilities L1Trigger/L1TGlobal
HLTrigger/JSONMonitoring_relbigobj+=HLTriggerJSONMonitoringPlugins
endif
ifeq ($(strip $(RecoPixelVertexing/PixelTrackFitting)),)
RecoPixelVertexingPixelTrackFitting := self/RecoPixelVertexing/PixelTrackFitting
RecoPixelVertexing/PixelTrackFitting := RecoPixelVertexingPixelTrackFitting
RecoPixelVertexingPixelTrackFitting_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoPixelVertexingPixelTrackFitting_EX_USE := $(foreach d, self cmssw root CommonTools/Statistics DataFormats/GeometrySurface DataFormats/GeometryVector DataFormats/SiPixelDetId DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records RecoTracker/TkMSParametrization RecoTracker/TkTrackingRegions TrackingTools/DetLayers TrackingTools/PatternTools TrackingTools/KalmanUpdators TrackingTools/Records TrackingTools/TrajectoryParametrization TrackingTools/TrajectoryState TrackingTools/TransientTrackingRecHit RecoTracker/TransientTrackingRecHit RecoPixelVertexing/PixelTriplets,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoPixelVertexingPixelTrackFitting_LCGDICTS  := x 
RecoPixelVertexingPixelTrackFitting_EX_LIB   := RecoPixelVertexingPixelTrackFitting
ALL_EXTERNAL_PRODS += RecoPixelVertexingPixelTrackFitting
RecoPixelVertexingPixelTrackFitting_CLASS := LIBRARY
RecoPixelVertexing/PixelTrackFitting_relbigobj+=RecoPixelVertexingPixelTrackFitting
endif
ifeq ($(strip $(RecoEgamma/EgammaHLTProducers)),)
RecoEgammaEgammaHLTProducers := self/RecoEgamma/EgammaHLTProducers
RecoEgamma/EgammaHLTProducers := RecoEgammaEgammaHLTProducers
RecoEgammaEgammaHLTProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaHLTProducers_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/EgammaCandidates Geometry/CaloGeometry RecoEcal/EgammaClusterAlgos RecoEcal/EgammaCoreTools RecoEgamma/EgammaHLTAlgos RecoEgamma/EgammaElectronAlgos RecoEgamma/EgammaIsolationAlgos MagneticField/Engine MagneticField/Records DataFormats/DetId DataFormats/SiPixelCluster DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit CondFormats/L1TObjects CondFormats/DataRecord Geometry/CommonDetUnit Geometry/TrackerGeometryBuilder DataFormats/FEDRawData Geometry/EcalMapping DataFormats/L1Trigger DataFormats/EcalRawData RecoEgamma/EgammaTools RecoTracker/TkTrackingRegions PhysicsTools/UtilAlgos FWCore/ServiceRegistry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += RecoEgammaEgammaHLTProducers
RecoEgammaEgammaHLTProducers_CLASS := LIBRARY
RecoEgamma/EgammaHLTProducers_relbigobj+=RecoEgammaEgammaHLTProducers
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, self cmssw ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
FWCoreVersion_CLASS := LIBRARY
FWCore/Version_relbigobj+=FWCoreVersion
endif
