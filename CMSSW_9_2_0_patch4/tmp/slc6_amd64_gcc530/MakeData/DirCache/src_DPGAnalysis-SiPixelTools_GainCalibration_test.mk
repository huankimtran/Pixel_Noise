ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_GainCalibration_test
src_DPGAnalysis-SiPixelTools_GainCalibration_test_parent := DPGAnalysis-SiPixelTools/GainCalibration
src_DPGAnalysis-SiPixelTools_GainCalibration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_GainCalibration_test,src/DPGAnalysis-SiPixelTools/GainCalibration/test,TEST))
