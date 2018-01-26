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
