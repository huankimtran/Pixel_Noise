ifeq ($(strip $(DPGAnalysis-SiPixelTools/LA-Calibration)),)
ALL_COMMONRULES += src_DPGAnalysis-SiPixelTools_LA-Calibration_src
src_DPGAnalysis-SiPixelTools_LA-Calibration_src_parent := DPGAnalysis-SiPixelTools/LA-Calibration
src_DPGAnalysis-SiPixelTools_LA-Calibration_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DPGAnalysis-SiPixelTools_LA-Calibration_src,src/DPGAnalysis-SiPixelTools/LA-Calibration/src,LIBRARY))
DPGAnalysis-SiPixelToolsLA-Calibration := self/DPGAnalysis-SiPixelTools/LA-Calibration
DPGAnalysis-SiPixelTools/LA-Calibration := DPGAnalysis-SiPixelToolsLA-Calibration
DPGAnalysis-SiPixelToolsLA-Calibration_files := $(patsubst src/DPGAnalysis-SiPixelTools/LA-Calibration/src/%,%,$(wildcard $(foreach dir,src/DPGAnalysis-SiPixelTools/LA-Calibration/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DPGAnalysis-SiPixelToolsLA-Calibration_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis-SiPixelTools/LA-Calibration/BuildFile
DPGAnalysis-SiPixelToolsLA-Calibration_LOC_USE := self cmssw FWCore/Framework DataFormats/Common FWCore/ParameterSet RecoTracker/TkSeedGenerator TrackingTools/TrackFitters TrackingTools/TransientTrack Geometry/TrackerGeometryBuilder Geometry/Records SimTracker/TrackerHitAssociation MagneticField/Records MagneticField/VolumeBasedEngine root clhep boost CondCore/DBOutputService CondFormats/SiPixelObjects
DPGAnalysis-SiPixelToolsLA-Calibration_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DPGAnalysis-SiPixelToolsLA-Calibration,DPGAnalysis-SiPixelToolsLA-Calibration,$(SCRAMSTORENAME_LIB),src/DPGAnalysis-SiPixelTools/LA-Calibration/src))
DPGAnalysis-SiPixelToolsLA-Calibration_PACKAGE := self/src/DPGAnalysis-SiPixelTools/LA-Calibration/src
ALL_PRODS += DPGAnalysis-SiPixelToolsLA-Calibration
DPGAnalysis-SiPixelToolsLA-Calibration_CLASS := LIBRARY
DPGAnalysis-SiPixelTools/LA-Calibration_forbigobj+=DPGAnalysis-SiPixelToolsLA-Calibration
DPGAnalysis-SiPixelToolsLA-Calibration_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysis-SiPixelToolsLA-Calibration,src/DPGAnalysis-SiPixelTools/LA-Calibration/src,src_DPGAnalysis-SiPixelTools_LA-Calibration_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
