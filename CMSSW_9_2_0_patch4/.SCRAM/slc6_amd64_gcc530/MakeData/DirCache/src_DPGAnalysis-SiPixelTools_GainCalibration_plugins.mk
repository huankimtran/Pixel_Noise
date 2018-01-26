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
