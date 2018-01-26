ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_PixelTrees_test
src_DPGAnalysis-SiPixelTools_PixelTrees_test_parent := DPGAnalysis-SiPixelTools/PixelTrees
src_DPGAnalysis-SiPixelTools_PixelTrees_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_PixelTrees_test,src/DPGAnalysis-SiPixelTools/PixelTrees/test,TEST))
