ALL_SUBSYSTEMS+=DPGAnalysis-SiPixelTools
subdirs_src_DPGAnalysis-SiPixelTools = src_DPGAnalysis-SiPixelTools_GainCalibration src_DPGAnalysis-SiPixelTools_HitAnalyzer src_DPGAnalysis-SiPixelTools_LA-Calibration src_DPGAnalysis-SiPixelTools_Pilot src_DPGAnalysis-SiPixelTools_PixelDBTools src_DPGAnalysis-SiPixelTools_PixelHitAssociator src_DPGAnalysis-SiPixelTools_PixelTrees src_DPGAnalysis-SiPixelTools_PixelTriplets
ALL_PACKAGES += DPGAnalysis-SiPixelTools/GainCalibration
subdirs_src_DPGAnalysis-SiPixelTools_GainCalibration := src_DPGAnalysis-SiPixelTools_GainCalibration_plugins src_DPGAnalysis-SiPixelTools_GainCalibration_python src_DPGAnalysis-SiPixelTools_GainCalibration_test
ifeq ($(strip $(PyDPGAnalysis-SiPixelToolsGainCalibration)),)
PyDPGAnalysis-SiPixelToolsGainCalibration := self/src/DPGAnalysis-SiPixelTools/GainCalibration/python
src_DPGAnalysis-SiPixelTools_GainCalibration_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DPGAnalysis-SiPixelTools/GainCalibration/python)
PyDPGAnalysis-SiPixelToolsGainCalibration_files := $(patsubst src/DPGAnalysis-SiPixelTools/GainCalibration/python/%,%,$(wildcard $(foreach dir,src/DPGAnalysis-SiPixelTools/GainCalibration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDPGAnalysis-SiPixelToolsGainCalibration_LOC_USE := self cmssw 
PyDPGAnalysis-SiPixelToolsGainCalibration_PACKAGE := self/src/DPGAnalysis-SiPixelTools/GainCalibration/python
ALL_PRODS += PyDPGAnalysis-SiPixelToolsGainCalibration
PyDPGAnalysis-SiPixelToolsGainCalibration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDPGAnalysis-SiPixelToolsGainCalibration,src/DPGAnalysis-SiPixelTools/GainCalibration/python,src_DPGAnalysis-SiPixelTools_GainCalibration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDPGAnalysis-SiPixelToolsGainCalibration,src/DPGAnalysis-SiPixelTools/GainCalibration/python))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_GainCalibration_python
src_DPGAnalysis-SiPixelTools_GainCalibration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_GainCalibration_python,src/DPGAnalysis-SiPixelTools/GainCalibration/python,PYTHON))
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_GainCalibration_test
src_DPGAnalysis-SiPixelTools_GainCalibration_test_parent := DPGAnalysis-SiPixelTools/GainCalibration
src_DPGAnalysis-SiPixelTools_GainCalibration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_GainCalibration_test,src/DPGAnalysis-SiPixelTools/GainCalibration/test,TEST))
ALL_PACKAGES += DPGAnalysis-SiPixelTools/HitAnalyzer
subdirs_src_DPGAnalysis-SiPixelTools_HitAnalyzer := src_DPGAnalysis-SiPixelTools_HitAnalyzer_test src_DPGAnalysis-SiPixelTools_HitAnalyzer_scripts
src_DPGAnalysis-SiPixelTools_HitAnalyzer_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/DPGAnalysis-SiPixelTools/HitAnalyzer/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_DPGAnalysis-SiPixelTools_HitAnalyzer_scripts,src/DPGAnalysis-SiPixelTools/HitAnalyzer/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(testPixels)),)
testPixels := self/src/DPGAnalysis-SiPixelTools/HitAnalyzer/test
testPixels_files := $(patsubst src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/BuildFile.))))
testPixels_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/HitAnalyzer/test/BuildFile
testPixels_LOC_USE := self cmssw FWCore/Framework SimDataFormats/TrackingHit SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts Geometry/TrackerNumberingBuilder Geometry/Records Geometry/TrackerGeometryBuilder CondFormats/SiPixelObjects TrackingTools/TransientTrack GeneratorInterface/Core CommonTools/UtilAlgos root heppdt SimGeneral/HepPDTRecord MagneticField/Records MagneticField/Engine DataFormats/FEDRawData EventFilter/SiPixelRawToDigi
testPixels_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testPixels,testPixels,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/HitAnalyzer/test))
testPixels_PACKAGE := self/src/DPGAnalysis-SiPixelTools/HitAnalyzer/test
ALL_PRODS += testPixels
testPixels_INIT_FUNC        += $$(eval $$(call Library,testPixels,src/DPGAnalysis-SiPixelTools/HitAnalyzer/test,src_DPGAnalysis-SiPixelTools_HitAnalyzer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
testPixels_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testPixels,src/DPGAnalysis-SiPixelTools/HitAnalyzer/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_HitAnalyzer_test
src_DPGAnalysis-SiPixelTools_HitAnalyzer_test_parent := DPGAnalysis-SiPixelTools/HitAnalyzer
src_DPGAnalysis-SiPixelTools_HitAnalyzer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_HitAnalyzer_test,src/DPGAnalysis-SiPixelTools/HitAnalyzer/test,TEST))
ALL_PACKAGES += DPGAnalysis-SiPixelTools/LA-Calibration
subdirs_src_DPGAnalysis-SiPixelTools_LA-Calibration := src_DPGAnalysis-SiPixelTools_LA-Calibration_interface src_DPGAnalysis-SiPixelTools_LA-Calibration_python src_DPGAnalysis-SiPixelTools_LA-Calibration_src src_DPGAnalysis-SiPixelTools_LA-Calibration_test
ifeq ($(strip $(PyDPGAnalysis-SiPixelToolsLA-Calibration)),)
PyDPGAnalysis-SiPixelToolsLA-Calibration := self/src/DPGAnalysis-SiPixelTools/LA-Calibration/python
src_DPGAnalysis-SiPixelTools_LA-Calibration_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DPGAnalysis-SiPixelTools/LA-Calibration/python)
PyDPGAnalysis-SiPixelToolsLA-Calibration_files := $(patsubst src/DPGAnalysis-SiPixelTools/LA-Calibration/python/%,%,$(wildcard $(foreach dir,src/DPGAnalysis-SiPixelTools/LA-Calibration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDPGAnalysis-SiPixelToolsLA-Calibration_LOC_USE := self cmssw 
PyDPGAnalysis-SiPixelToolsLA-Calibration_PACKAGE := self/src/DPGAnalysis-SiPixelTools/LA-Calibration/python
ALL_PRODS += PyDPGAnalysis-SiPixelToolsLA-Calibration
PyDPGAnalysis-SiPixelToolsLA-Calibration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDPGAnalysis-SiPixelToolsLA-Calibration,src/DPGAnalysis-SiPixelTools/LA-Calibration/python,src_DPGAnalysis-SiPixelTools_LA-Calibration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDPGAnalysis-SiPixelToolsLA-Calibration,src/DPGAnalysis-SiPixelTools/LA-Calibration/python))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_LA-Calibration_python
src_DPGAnalysis-SiPixelTools_LA-Calibration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_LA-Calibration_python,src/DPGAnalysis-SiPixelTools/LA-Calibration/python,PYTHON))
ifeq ($(strip $(SiPixelLorentzAngleTest)),)
SiPixelLorentzAngleTest := self/src/DPGAnalysis-SiPixelTools/LA-Calibration/test
SiPixelLorentzAngleTest_files := $(patsubst src/DPGAnalysis-SiPixelTools/LA-Calibration/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/LA-Calibration/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/LA-Calibration/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/LA-Calibration/test/BuildFile.))))
SiPixelLorentzAngleTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/LA-Calibration/test/BuildFile
SiPixelLorentzAngleTest_LOC_USE := self cmssw CommonTools/UtilAlgos CondFormats/DataRecord CondFormats/SiPixelObjects FWCore/Framework DataFormats/Common FWCore/ParameterSet clhep boost
SiPixelLorentzAngleTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SiPixelLorentzAngleTest,SiPixelLorentzAngleTest,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/LA-Calibration/test))
SiPixelLorentzAngleTest_PACKAGE := self/src/DPGAnalysis-SiPixelTools/LA-Calibration/test
ALL_PRODS += SiPixelLorentzAngleTest
SiPixelLorentzAngleTest_INIT_FUNC        += $$(eval $$(call Library,SiPixelLorentzAngleTest,src/DPGAnalysis-SiPixelTools/LA-Calibration/test,src_DPGAnalysis-SiPixelTools_LA-Calibration_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
SiPixelLorentzAngleTest_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,SiPixelLorentzAngleTest,src/DPGAnalysis-SiPixelTools/LA-Calibration/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_LA-Calibration_test
src_DPGAnalysis-SiPixelTools_LA-Calibration_test_parent := DPGAnalysis-SiPixelTools/LA-Calibration
src_DPGAnalysis-SiPixelTools_LA-Calibration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_LA-Calibration_test,src/DPGAnalysis-SiPixelTools/LA-Calibration/test,TEST))
ALL_PACKAGES += DPGAnalysis-SiPixelTools/Pilot
subdirs_src_DPGAnalysis-SiPixelTools_Pilot := src_DPGAnalysis-SiPixelTools_Pilot_test
ifeq ($(strip $(Pilot)),)
Pilot := self/src/DPGAnalysis-SiPixelTools/Pilot/test
Pilot_files := $(patsubst src/DPGAnalysis-SiPixelTools/Pilot/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/Pilot/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/Pilot/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/Pilot/test/BuildFile.))))
Pilot_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/Pilot/test/BuildFile
Pilot_LOC_USE := self cmssw FWCore/Framework SimDataFormats/TrackingHit SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts Geometry/TrackerNumberingBuilder Geometry/Records Geometry/TrackerGeometryBuilder CondFormats/SiPixelObjects TrackingTools/TransientTrack GeneratorInterface/Core CommonTools/UtilAlgos root heppdt SimGeneral/HepPDTRecord MagneticField/Records MagneticField/Engine DataFormats/FEDRawData EventFilter/SiPixelRawToDigi
Pilot_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,Pilot,Pilot,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/Pilot/test))
Pilot_PACKAGE := self/src/DPGAnalysis-SiPixelTools/Pilot/test
ALL_PRODS += Pilot
Pilot_INIT_FUNC        += $$(eval $$(call Library,Pilot,src/DPGAnalysis-SiPixelTools/Pilot/test,src_DPGAnalysis-SiPixelTools_Pilot_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
Pilot_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,Pilot,src/DPGAnalysis-SiPixelTools/Pilot/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_Pilot_test
src_DPGAnalysis-SiPixelTools_Pilot_test_parent := DPGAnalysis-SiPixelTools/Pilot
src_DPGAnalysis-SiPixelTools_Pilot_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_Pilot_test,src/DPGAnalysis-SiPixelTools/Pilot/test,TEST))
ALL_PACKAGES += DPGAnalysis-SiPixelTools/PixelDBTools
subdirs_src_DPGAnalysis-SiPixelTools_PixelDBTools := src_DPGAnalysis-SiPixelTools_PixelDBTools_test
ifeq ($(strip $(PixelDBTools_test)),)
PixelDBTools_test := self/src/DPGAnalysis-SiPixelTools/PixelDBTools/test
PixelDBTools_test_files := $(patsubst src/DPGAnalysis-SiPixelTools/PixelDBTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis-SiPixelTools/PixelDBTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis-SiPixelTools/PixelDBTools/test/$(file). Please fix src/DPGAnalysis-SiPixelTools/PixelDBTools/test/BuildFile.))))
PixelDBTools_test_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/PixelDBTools/test/BuildFile
PixelDBTools_test_LOC_USE := self cmssw boost root CommonTools/UtilAlgos Geometry/Records Geometry/TrackerGeometryBuilder CondCore/DBOutputService CondTools/SiPixel CalibTracker/SiPixelESProducers RecoLocalTracker/SiPixelRecHits CalibTracker/SiPixelConnectivity DQM/SiPixelPhase1Common
PixelDBTools_test_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PixelDBTools_test,PixelDBTools_test,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/PixelDBTools/test))
PixelDBTools_test_PACKAGE := self/src/DPGAnalysis-SiPixelTools/PixelDBTools/test
ALL_PRODS += PixelDBTools_test
PixelDBTools_test_INIT_FUNC        += $$(eval $$(call Library,PixelDBTools_test,src/DPGAnalysis-SiPixelTools/PixelDBTools/test,src_DPGAnalysis-SiPixelTools_PixelDBTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
PixelDBTools_test_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PixelDBTools_test,src/DPGAnalysis-SiPixelTools/PixelDBTools/test))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelDBTools_test
src_DPGAnalysis-SiPixelTools_PixelDBTools_test_parent := DPGAnalysis-SiPixelTools/PixelDBTools
src_DPGAnalysis-SiPixelTools_PixelDBTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelDBTools_test,src/DPGAnalysis-SiPixelTools/PixelDBTools/test,TEST))
ALL_PACKAGES += DPGAnalysis-SiPixelTools/PixelHitAssociator
subdirs_src_DPGAnalysis-SiPixelTools_PixelHitAssociator := src_DPGAnalysis-SiPixelTools_PixelHitAssociator_phase1 src_DPGAnalysis-SiPixelTools_PixelHitAssociator_python src_DPGAnalysis-SiPixelTools_PixelHitAssociator_src src_DPGAnalysis-SiPixelTools_PixelHitAssociator_test
ifeq ($(strip $(PyDPGAnalysis-SiPixelToolsPixelHitAssociator)),)
PyDPGAnalysis-SiPixelToolsPixelHitAssociator := self/src/DPGAnalysis-SiPixelTools/PixelHitAssociator/python
src_DPGAnalysis-SiPixelTools_PixelHitAssociator_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/python)
PyDPGAnalysis-SiPixelToolsPixelHitAssociator_files := $(patsubst src/DPGAnalysis-SiPixelTools/PixelHitAssociator/python/%,%,$(wildcard $(foreach dir,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDPGAnalysis-SiPixelToolsPixelHitAssociator_LOC_USE := self cmssw 
PyDPGAnalysis-SiPixelToolsPixelHitAssociator_PACKAGE := self/src/DPGAnalysis-SiPixelTools/PixelHitAssociator/python
ALL_PRODS += PyDPGAnalysis-SiPixelToolsPixelHitAssociator
PyDPGAnalysis-SiPixelToolsPixelHitAssociator_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDPGAnalysis-SiPixelToolsPixelHitAssociator,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/python,src_DPGAnalysis-SiPixelTools_PixelHitAssociator_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDPGAnalysis-SiPixelToolsPixelHitAssociator,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/python))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelHitAssociator_python
src_DPGAnalysis-SiPixelTools_PixelHitAssociator_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelHitAssociator_python,src/DPGAnalysis-SiPixelTools/PixelHitAssociator/python,PYTHON))
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
ALL_PACKAGES += DPGAnalysis-SiPixelTools/PixelTrees
subdirs_src_DPGAnalysis-SiPixelTools_PixelTrees := src_DPGAnalysis-SiPixelTools_PixelTrees_plugins src_DPGAnalysis-SiPixelTools_PixelTrees_python src_DPGAnalysis-SiPixelTools_PixelTrees_test
ifeq ($(strip $(PyDPGAnalysis-SiPixelToolsPixelTrees)),)
PyDPGAnalysis-SiPixelToolsPixelTrees := self/src/DPGAnalysis-SiPixelTools/PixelTrees/python
src_DPGAnalysis-SiPixelTools_PixelTrees_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DPGAnalysis-SiPixelTools/PixelTrees/python)
PyDPGAnalysis-SiPixelToolsPixelTrees_files := $(patsubst src/DPGAnalysis-SiPixelTools/PixelTrees/python/%,%,$(wildcard $(foreach dir,src/DPGAnalysis-SiPixelTools/PixelTrees/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDPGAnalysis-SiPixelToolsPixelTrees_LOC_USE := self cmssw 
PyDPGAnalysis-SiPixelToolsPixelTrees_PACKAGE := self/src/DPGAnalysis-SiPixelTools/PixelTrees/python
ALL_PRODS += PyDPGAnalysis-SiPixelToolsPixelTrees
PyDPGAnalysis-SiPixelToolsPixelTrees_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDPGAnalysis-SiPixelToolsPixelTrees,src/DPGAnalysis-SiPixelTools/PixelTrees/python,src_DPGAnalysis-SiPixelTools_PixelTrees_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDPGAnalysis-SiPixelToolsPixelTrees,src/DPGAnalysis-SiPixelTools/PixelTrees/python))
endif
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelTrees_python
src_DPGAnalysis-SiPixelTools_PixelTrees_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelTrees_python,src/DPGAnalysis-SiPixelTools/PixelTrees/python,PYTHON))
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelTrees_test
src_DPGAnalysis-SiPixelTools_PixelTrees_test_parent := DPGAnalysis-SiPixelTools/PixelTrees
src_DPGAnalysis-SiPixelTools_PixelTrees_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelTrees_test,src/DPGAnalysis-SiPixelTools/PixelTrees/test,TEST))
ALL_PACKAGES += DPGAnalysis-SiPixelTools/PixelTriplets
subdirs_src_DPGAnalysis-SiPixelTools_PixelTriplets := src_DPGAnalysis-SiPixelTools_PixelTriplets_src
ALL_SUBSYSTEMS+=JamesDigitizer
subdirs_src_JamesDigitizer = src_JamesDigitizer_Digitizer src_JamesDigitizer_George
ALL_PACKAGES += JamesDigitizer/Digitizer
subdirs_src_JamesDigitizer_Digitizer := 
ALL_PACKAGES += JamesDigitizer/George
subdirs_src_JamesDigitizer_George := src_JamesDigitizer_George_test src_JamesDigitizer_George_plugins src_JamesDigitizer_George_python
ifeq ($(strip $(PyJamesDigitizerGeorge)),)
PyJamesDigitizerGeorge := self/src/JamesDigitizer/George/python
src_JamesDigitizer_George_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JamesDigitizer/George/python)
PyJamesDigitizerGeorge_files := $(patsubst src/JamesDigitizer/George/python/%,%,$(wildcard $(foreach dir,src/JamesDigitizer/George/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJamesDigitizerGeorge_LOC_USE := self cmssw 
PyJamesDigitizerGeorge_PACKAGE := self/src/JamesDigitizer/George/python
ALL_PRODS += PyJamesDigitizerGeorge
PyJamesDigitizerGeorge_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJamesDigitizerGeorge,src/JamesDigitizer/George/python,src_JamesDigitizer_George_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJamesDigitizerGeorge,src/JamesDigitizer/George/python))
endif
ALL_COMMONRULES += src_JamesDigitizer_George_python
src_JamesDigitizer_George_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JamesDigitizer_George_python,src/JamesDigitizer/George/python,PYTHON))
ALL_COMMONRULES += src_JamesDigitizer_George_test
src_JamesDigitizer_George_test_parent := JamesDigitizer/George
src_JamesDigitizer_George_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JamesDigitizer_George_test,src/JamesDigitizer/George/test,TEST))
