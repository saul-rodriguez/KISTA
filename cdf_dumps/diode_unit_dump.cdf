
/****************************************************/
 LIBRARY = "KISTA_1UM"
 CELL    = "diode_unit"
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
        ?defValue       "diode_unit"
        ?type           "string"
        ?display        "artParameterInToolDisplay('model)"
        ?storeDefault  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "area"
        ?prompt         "Device area"
        ?defValue       "1p"
        ?type           "string"
        ?display        "artParameterInToolDisplay('area)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "perim"
        ?prompt         "Junction perimeter factor"
        ?defValue       "4u"
        ?type           "string"
        ?display        "artParameterInToolDisplay('perim)"
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
        ?name           "lm"
        ?prompt         "Length of metal capacitor"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('lm)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "lp"
        ?prompt         "Length of polysilicon"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('lp)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "wm"
        ?prompt         "Width of metal capacitor"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('wm)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "wp"
        ?prompt         "Width of polysilicon"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('wp)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "region"
        ?prompt         "Estimated operating region"
        ?defValue       " "
        ?choices        '(" " "off" "on")
        ?type           "cyclic"
        ?display        "artParameterInToolDisplay('region)"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "pj"
        ?prompt         "Periphery of junction"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('pj)"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "off"
        ?prompt         "Device initially off"
        ?type           "boolean"
        ?display        "artParameterInToolDisplay('off)"
    )
    cdfCreateParam( cdfId
        ?name           "Vd"
        ?prompt         "Initial diode voltage"
        ?units          "voltage"
        ?defValue       ""
        ?type           "string"
        ?display        "artParameterInToolDisplay('Vd)"
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

    ;;; Simulator Information
    cdfId->simInfo = list( nil )
    cdfId->simInfo->ams = '( nil
        extraTerminals    nil
        componentName     nil
        excludeParameters nil
        arrayParameters   nil
        stringParameters  nil
        referenceParameters nil
        netlistProcedure  nil
        propMapping       nil
        namePrefix        ""
        isPrimitive       (t)
        enumParameters    (region)
        termOrder         (PLUS MINUS)
        termMapping       (nil PLUS \:a MINUS "(FUNCTION minus(root(\"PLUS\")))")
        instParameters    (area perim l w m scale trise model lm lp wm wp)
        otherParameters   (model)
    )
    cdfId->simInfo->auCdl = '( nil
        netlistProcOpts   nil
        dollarEqualParams nil
        dollarParams      nil
        instParameters    nil
        otherParameters   nil
        propMapping       nil
        netlistProcedure  ansCdlCompPrim
        componentName     diode_unit
        termOrder         (PLUS MINUS)
        namePrefix        "D"
        modelName         "diode_unit"
    )
    cdfId->simInfo->auLvs = '( nil
        permuteRule       ""
        deviceTerminals   "PLUS MINUS"
        instParameters    nil
        otherParameters   nil
        propMapping       nil
        netlistProcedure  ansLvsCompPrim
        componentName     diode_unit
        termOrder         (PLUS MINUS)
        namePrefix        "D"
    )
    cdfId->simInfo->hspiceD = '( nil
        opParamExprList   nil
        optParamExprList  nil
        netlistProcedure  hspiceDCompPrim
        instParameters    (area pj wp lp wm lm l w off Vd m dtemp)
        otherParameters   (model)
        componentName     diode
        termOrder         (PLUS MINUS)
        propMapping       (nil vd Vd)
        namePrefix        "D"
        termMapping       (nil PLUS "" MINUS "(FUNCTION minus(root(\"PLUS\")))")
        noPortDelimiter   t
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        componentName     nil
        netlistProcedure  nil
        propMapping       nil
        namePrefix        ""
        otherParameters   (model)
        instParameters    (area perim l w m scale trise region lp lm wp wm)
        termOrder         (PLUS MINUS)
        termMapping       (nil PLUS \:a MINUS "(FUNCTION minus(root(\"PLUS\")))")
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 340
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfId->instDisplayMode         = "instName"
    cdfId->paramDisplayMode        = "opPoint"
    cdfId->modelLabelSet           = "is rs n"
;;    cdfId->opPointLabelSet         = "id vd reg"
    cdfId->opPointLabelSet         = "i v reg"
    cdfId->paramLabelSet           = "-model Vd area"
    cdfId->paramDisplayMode = "parameter"
    cdfSaveCDF( cdfId )
)
