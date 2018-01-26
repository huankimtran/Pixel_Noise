ifeq ($(strip $(JamesDigitizer/Digitizer)),)
src_JamesDigitizer_Digitizer := self/JamesDigitizer/Digitizer
JamesDigitizer/Digitizer  := src_JamesDigitizer_Digitizer
src_JamesDigitizer_Digitizer_BuildFile    := $(WORKINGDIR)/cache/bf/src/JamesDigitizer/Digitizer/BuildFile
src_JamesDigitizer_Digitizer_LOC_USE := boost FWCore/Framework self DataFormats/DetId cmssw RecoLocalTracker/SiPixelRecHits DataFormats/SiPixelDigi SimDataFormats/CrossingFrame Geometry/CommonDetUnit SimDataFormats/TrackingHit root DataFormats/SiPixelDetId FWCore/PluginManager Geometry/TrackerGeometryBuilder DataFormats/Common Geometry/Records CommonTools/UtilAlgos SimDataFormats/TrackerDigiSimLink FWCore/ServiceRegistry SimTracker/TrackerHitAssociation FWCore/ParameterSet
src_JamesDigitizer_Digitizer_EX_USE   := $(foreach d,$(src_JamesDigitizer_Digitizer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_JamesDigitizer_Digitizer
src_JamesDigitizer_Digitizer_INIT_FUNC += $$(eval $$(call EmptyPackage,src_JamesDigitizer_Digitizer,src/JamesDigitizer/Digitizer))
endif

