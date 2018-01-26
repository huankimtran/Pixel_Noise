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
