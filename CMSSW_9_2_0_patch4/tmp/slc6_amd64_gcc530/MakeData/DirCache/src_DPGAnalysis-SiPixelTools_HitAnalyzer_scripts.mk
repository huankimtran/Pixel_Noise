src_DPGAnalysis-SiPixelTools_HitAnalyzer_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/DPGAnalysis-SiPixelTools/HitAnalyzer/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_DPGAnalysis-SiPixelTools_HitAnalyzer_scripts,src/DPGAnalysis-SiPixelTools/HitAnalyzer/scripts,$(SCRAMSTORENAME_BIN),*))
