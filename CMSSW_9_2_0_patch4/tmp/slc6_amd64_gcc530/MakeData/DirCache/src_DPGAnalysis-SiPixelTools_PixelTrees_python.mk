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
