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
