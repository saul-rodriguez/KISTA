
/****************************************************/
 LIBRARY = "KISTA_1UM"
 CELL    = "nres_unit"
/****************************************************/

let( ( libId cellId cdfId )
    unless( cellId = ddGetObj( LIBRARY CELL )
        error( "Could not get cell %s." CELL )
    )
    when( cdfId = cdfGetBaseCellCDF( cellId )
        cdfDeleteCDF( cdfId )
    )
    cdfId  = cdfCreateBaseCellCDF( cellId )

    ;;; Parameters
    cdfCreateParam( cdfId
        ?name           "model"
        ?prompt         "Model name"
        ?defValue       "nres_unit"
        ?type           "string"
        ?display        "artParameterInToolDisplay('model)"
        ?storeDefault  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "r"
        ?prompt         "Resistance"
        ?units          "resistance"
        ?defValue       "1K"
        ?type           "string"
        ?use            "t"
        ?display        "artParameterInToolDisplay('r)"
        ?storeDefault  "yes"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "l"
        ?prompt         "Length"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('l)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "w"
        ?prompt         "Width"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('w)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "m"
        ?prompt         "Multiplier"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('m)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "scale"
        ?prompt         "Scale factor"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('scale)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "trise"
        ?prompt         "Temp rise from ambient"
        ?defValue       ""
        ?type           "string"
        ?use            "!cdfgData->triseSpec ||                        cdfgData->triseSpec->value == \"trise\""
        ?display        "artParameterInToolDisplay('trise)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "tc1"
        ?prompt         "Temperature coefficient 1"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('tc1)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "tc2"
        ?prompt         "Temperature coefficient 2"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('tc2)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "resform"
        ?prompt         "Resistance Form"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('resform)"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "isnoisy"
        ?prompt         "Generate noise?"
        ?defValue       " "
        ?choices        '(" " "yes" "no")
        ?type           "cyclic"
        ?display        "if(cdfgData->behav_param if( (and member(cdfgData->behav_param->value '(\"r\" \"g\" \"i\" \"v\")) artParameterInToolDisplay('isnoisy)) t nil) \"artParameterInToolDisplay('isnoisy)\")"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "c"
        ?prompt         "Capacitance"
        ?units          "capacitance"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('c)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "tc1r"
        ?prompt         "Alias for Lin. temp. co."
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('tc1r)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "tc2r"
        ?prompt         "Alias for Quad temp. co."
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('tc2r)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "tc1c"
        ?prompt         "Lin temp co of lin cap"
        ?defValue       ""
        ?type           "string"
        ?display        "if(cdfgData->behav_param if( (and member(cdfgData->behav_param->value '(\"r\" \"g\")) artParameterInToolDisplay('tc1c)) t nil) \"artParameterInToolDisplay('tc1c)\")"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "tc2c"
        ?prompt         "Quad temp co of lin cap"
        ?defValue       ""
        ?type           "string"
        ?display        "if(cdfgData->behav_param if( (and member(cdfgData->behav_param->value '(\"r\" \"g\")) artParameterInToolDisplay('tc2c)) t nil) \"artParameterInToolDisplay('tc2c)\")"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "scaler"
        ?prompt         "Resistance Scaling Factor"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('scaler)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "scalec"
        ?prompt         "Capacitance Scaling Factor"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('scalec)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "ac"
        ?prompt         "AC resistance"
        ?units          "resistance"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('ac)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "dtemp"
        ?prompt         "Temperature difference"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('dtemp)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "hrc"
        ?prompt         "Capacitance connected"
        ?units          "capacitance"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('hrc)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )

    ;;; Simulator Information
    cdfId->simInfo = list( nil )
    cdfId->simInfo->ams = '( nil
        isPrimitive       (t)
        extraTerminals    nil
        propMapping       nil
        termMapping       (nil PLUS \:1 MINUS "(FUNCTION minus(root(\"PLUS\")))")
        termOrder         (PLUS MINUS)
        componentName     (resistor)
        excludeParameters nil
        arrayParameters   nil
        stringParameters  nil
        referenceParameters nil
        enumParameters    (isnoisy resform)
        instParameters    (r l w m scale trise tc1 tc2 model)
        otherParameters   (model)
        netlistProcedure  nil
    )
    cdfId->simInfo->auCdl = '( nil
        netlistProcOpts   nil
        dollarEqualParams nil
        dollarParams      nil
        modelName         "nres_unit"
        namePrefix        "R"
        propMapping       (nil R r)
        termOrder         (PLUS MINUS)
        componentName     nres_unit
        instParameters    (R)
        otherParameters   nil
        netlistProcedure  ansCdlCompPrim
    )
    cdfId->simInfo->auLvs = '( nil
        namePrefix        "R"
        permuteRule       "(p PLUS MINUS)"
        propMapping       nil
        deviceTerminals   "PLUS MINUS"
        termOrder         (PLUS MINUS)
        componentName     nres_unit
        instParameters    (r)
        otherParameters   nil
        netlistProcedure  ansLvsCompPrim
    )
    cdfId->simInfo->hspiceD = '( nil
        opParamExprList   nil
        optParamExprList  nil
        propMapping       nil
        termMapping       (nil PLUS "" MINUS "(FUNCTION minus(root(\"PLUS\")))")
        termOrder         (PLUS MINUS)
        namePrefix        "R"
        componentName     res
        instParameters    (r tc1 tc2 scale m ac dtemp l w hrc)
        otherParameters   (model)
        netlistProcedure  hspiceDCompPrim
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        propMapping       (nil rac ac)
        termMapping       (nil PLUS \:1 MINUS "(FUNCTION minus(root(\"PLUS\")))")
        termOrder         (PLUS MINUS)
        componentName     resistor
        instParameters    (r l w resform m scale trise tc1 tc2 isnoisy c tc1r tc2r tc1c tc2c scaler scalec rac dtemp)
        otherParameters   (model)
        netlistProcedure  nil
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 340
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfId->instDisplayMode         = "instName"
    cdfId->paramDisplayMode        = "parameter"
    cdfId->opPointLabelSet         = "v i pwr"
    cdfId->paramLabelSet           = "r tc1 tc2"
    cdfSaveCDF( cdfId )
)
