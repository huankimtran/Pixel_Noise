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
