; Technology File: gsclib045_tech
; Generated on Mar 25 14:27:53 2013
;     with @(#)$CDS: virtuoso version ICADV12.1-64b 10/24/2012 22:52 (sjfnl173) $


;********************************
; CONTROLS
;********************************
controls(
 techVersion("1.0")

 refTechLibs(
; techLibName            
; -----------            
  "KISTA_SOI_TECH" 
 ) ;refTechLibs

) ;controls


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

) ;layerDefinitions


;********************************
; VIADEFS
;********************************
viaDefs(

 customViaDefs(
 ;( viaDefName       libName     cellName viewName layer1 layer2 resistancePerCut)
 ;( ----------       -------     -------- -------- ------ ------ ----------------)
    ( M2_M1_HV         KISTA_SOI_STDLIB M2_M1_HV       via Metal1 Metal2     0.0)
    ( M2_M1_VV         KISTA_SOI_STDLIB M2_M1_VV       via Metal1 Metal2     0.0)
    ( M2_M1_VH         KISTA_SOI_STDLIB M2_M1_VH       via Metal1 Metal2     0.0)
    ( M2_M1_HH         KISTA_SOI_STDLIB M2_M1_HH       via Metal1 Metal2     0.0)
 ;  ( M2_M1_2x1_HV_E  gsclib045_tech M2_M1_2x1_HV_E via Metal1 Metal2 0.0)
 ;  ( M2_M1_2x1_HV_W  gsclib045_tech M2_M1_2x1_HV_W via Metal1 Metal2 0.0)
 ;  ( M2_M1_1x2_HV_N  gsclib045_tech M2_M1_1x2_HV_N via Metal1 Metal2 0.0)
 ;  ( M2_M1_1x2_HV_S  gsclib045_tech M2_M1_1x2_HV_S via Metal1 Metal2 0.0)
    ( M3_M2_VH        KISTA_SOI_STDLIB M3_M2_VH       via Metal2 Metal3 0.0)
    ( M3_M2_HH        KISTA_SOI_STDLIB M3_M2_HH       via Metal2 Metal3 0.0)
    ( M3_M2_HV        KISTA_SOI_STDLIB M3_M2_HV       via Metal2 Metal3 0.0)
    ( M3_M2_VV        KISTA_SOI_STDLIB M3_M2_VV       via Metal2 Metal3 0.0)
 ;  ( M3_M2_M_NH      gsclib045_tech M3_M2_M_NH     via Metal2 Metal3 0.0)
 ;  ( M3_M2_M_SH      gsclib045_tech M3_M2_M_SH     via Metal2 Metal3 0.0)
 ;  ( M3_M2_2x1_VH_E  gsclib045_tech M3_M2_2x1_VH_E via Metal2 Metal3 0.0)
 ;  ( M3_M2_2x1_VH_W  gsclib045_tech M3_M2_2x1_VH_W via Metal2 Metal3 0.0)
 ;  ( M3_M2_1x2_VH_N  gsclib045_tech M3_M2_1x2_VH_N via Metal2 Metal3 0.0)
 ;  ( M3_M2_1x2_VH_S  gsclib045_tech M3_M2_1x2_VH_S via Metal2 Metal3 0.0)
    ( M4_M3_HV        KISTA_SOI_STDLIB M4_M3_HV       via Metal3 Metal4 0.0)
    ( M4_M3_VV        KISTA_SOI_STDLIB M4_M3_VV       via Metal3 Metal4 0.0)
    ( M4_M3_VH        KISTA_SOI_STDLIB M4_M3_VH       via Metal3 Metal4 0.0)
    ( M4_M3_HH        KISTA_SOI_STDLIB M4_M3_HH       via Metal3 Metal4 0.0)
 ;  ( M4_M3_M_EV      gsclib045_tech M4_M3_M_EV     via Metal3 Metal4 0.0)
 ;  ( M4_M3_M_WV      gsclib045_tech M4_M3_M_WV     via Metal3 Metal4 0.0)
 ;  ( M4_M3_2x1_HV_E  gsclib045_tech M4_M3_2x1_HV_E via Metal3 Metal4 0.0)
 ;  ( M4_M3_2x1_HV_W  gsclib045_tech M4_M3_2x1_HV_W via Metal3 Metal4 0.0)
 ;  ( M4_M3_1x2_HV_N  gsclib045_tech M4_M3_1x2_HV_N via Metal3 Metal4 0.0)
 ;  ( M4_M3_1x2_HV_S  gsclib045_tech M4_M3_1x2_HV_S via Metal3 Metal4 0.0)
 ) ;customViaDefs

) ;viaDefs



;********************************
; CONSTRAINT GROUPS
;********************************
constraintGroups(

 ;( group	[override] )
 ;( -----	---------- )
  ( "LEFSpecialRouteSpec"	nil    "LEFSpecialRouteSpec"

    interconnect(
     ( validVias     (M2_M1  M3_M2  M4_M3 ) )
    ) ;interconnect
  ) ;LEFSpecialRouteSpec

 ;( group	[override] )
 ;( -----	---------- )
  ( "LEFDefaultRouteSpec"	nil    "LEFDefaultRouteSpec"

    routingDirections(
     ( Poly	"none" )
     ( Metal1	"horizontal" )
     ( Metal2	"vertical" )
     ( Metal3	"horizontal" )
     ( Metal4	"vertical" )    
    ) ;routingDirections

    spacings(
     ( minWidth                   "Cont"	1.0 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal1"   4.0 )
     ( verticalPitch              "Metal1"   4.0 )
     ( horizontalOffset           "Metal1"   2.0 )
     ( verticalOffset             "Metal1"   2.0 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal1"	2.0 )
     ( minWidth                   "Via1"	1.0 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal2"   4.0 )
     ( verticalPitch              "Metal2"   4.0 )
     ( horizontalOffset           "Metal2"   2.0 )
     ( verticalOffset             "Metal2"   2.0 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal2"	2.0 )
     ( minWidth                   "Via2"		1.0 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal3"   4.0 )
     ( verticalPitch              "Metal3"   4.0 )
     ( horizontalOffset           "Metal3"   2.0 )
     ( verticalOffset             "Metal3"   2.0 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal3"	2.0 )
     ( minWidth                   "Via3"		1.0 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal4"   4.0 )
     ( verticalPitch              "Metal4"   4.0 )
     ( horizontalOffset           "Metal4"   2.0 )
     ( verticalOffset             "Metal4"   2.0 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal4"	2.0 )
     ;( minWidth                   "Via4"		1.0 )
    ) ;spacings
   
    interconnect(
     ( validLayers   (Metal1  Metal2  Metal3  Metal4 ) )
     ( validVias     (M2_M1_HV M2_M1_VV M2_M1_VH M2_M1_HH
					 M3_M2_VH M3_M2_HH M3_M2_HV M3_M2_VV 
					 M4_M3_HV M4_M3_VV M4_M3_VH M4_M3_HH ) )
    ) ;interconnect
  ) ;LEFDefaultRouteSpec
) ;constraintGroups


;********************************
; DEVICES
;********************************
devices(
tcCreateCDSDeviceClass()

) ;devices


;********************************
; SITEDEFS
;********************************
siteDefs(

 scalarSiteDefs(
 ;( siteDefName          type 	width  height  symInX symInY symInR90)
 ;( -----------          ---- 	-----  ------  ------ ------ -------)
  ( CoreSite             core 	12.0     36.0    nil nil nil)
  ( IOSite               pad  	1.0     240.0    nil nil nil)
  ( CornerSite           pad	240.0   240.0    nil nil nil)
  ( CoreSiteDouble       core 	12.0     72.0    nil nil nil)
 ) ;scalarSiteDefs

) ;siteDefs

