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
