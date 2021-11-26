# Altos API example 

set rundir $env(PWD)

### Define temperature, voltage ###
set_operating_condition -voltage 1.5 -temp 75 

read_ldb ${rundir}/LDB/example.ldb.gz

# Example API Routines 

# ALAPI_init : initialize the API 
set ok [ALAPI_init]
if {$ok} {
 puts "API initialization ok.\n"
} else {
 puts "API initialization failed!\n"
} 

# ALAPI_area : get cell area”
set cell "INVX1"
set cid [ALAPI_cellid $cell]
set area [ALAPI_area $cid]
puts "Area of cell $cell is $area\n"

# ALAPI_attributes : get attributes of a library, cell or pin 
# Get the library attributes
set lib_attrs [ALAPI_attributes]
foreach attr $lib_attrs {
  set name [lindex $attr 0]
  set value [lindex $attr 1]
  puts "Library attribute:“$name = $value"
}
puts ""

# Get a cell's attributes
set cell "INVX1"
set cid [ALAPI_cellid $cell]
set cell_attrs [ALAPI_attributes -cid $cid]

# List the cell attributes
foreach attr $cell_attrs {
  if {[llength $attr] == 2 } {
    set name [lindex $attr 0]
    set value [lindex $attr 1]
    puts "$cell attributes: $name = $value"
  }
}
puts ""

# Get the attributes of pin A
set pin_attrs [ALAPI_attributes -cid $cid -pin "A"]

# List the cell's pins attributes
foreach attr $pin_attrs {
  if {[llength $attr] == 2} {
    set name [lindex $attr 0]
    set value [lindex $attr 1]
    puts "Cell $cell pin A attributes: $name = $value"
  }
}
puts ""

# ALAPI_cellid : get a cell id from a cell name 
set cell "DFFX1"
set cid [ALAPI_cellid $cell]
puts "Cell $cell has an id $cid"
puts ""

# ALAPI_cellgroups : List cells in the library grouped by footprint
set cell_groups [ALAPI_cellgroups]

# List the groups attributes
foreach group $cell_groups {
  if {[llength $group] == 2 } {
    set group_name [lindex $group 0]
    set cellnames [lindex $group 1]
    puts "Group $group_name contains cells:"
    foreach cell $cellnames {
      puts "$cell"
    }
  }
}
puts ""

# ALAPI_cellnames - get a list of cell names in the library
set cell_names [ALAPI_cellnames]

# List the cell names
foreach cell $cell_names {
  puts "cell: $cell"
}
puts ""

# ALAPI_clocks - return a list of clocks for a cell 
set cell "DFFX1"
set cid [ALAPI_cellid $cell]

set clocks [ALAPI_clocks $cid]

# List all the clocks in the cell
foreach clk $clocks {
  puts "$cell has clock pin $clk"
}
puts ""

# ALAPI_constraint - return a list of timing constraints for a pin
set cell "DFFX1"
set cid [ALAPI_cellid $cell]

set constraints [ALAPI_constraint $cid "D"]
puts "Constraints for cell $cell"

foreach const $constraints {
  set related_pin [lindex $const $ALAPI_RELATED_PIN]
  set when [lindex $const $ALAPI_WHEN]
  set timing_type [lindex $const $ALAPI_TIMING_TYPE]
      
  puts "$related_pin $when $timing_type"
  set rise_const [lindex $const $ALAPI_RISE_CONSTRAINT]
  if { [llength $rise_const] != 0} {
    set data_slews [lindex $rise_const 0]
    set clk_slews [lindex $rise_const 1]
    set check [lindex $rise_const 2]
    puts "index_1 : $data_slews"
    puts "index_2 : $clk_slews"
    puts "rising values  : $check"
  }
  set fall_const [lindex $const $ALAPI_FALL_CONSTRAINT]
  if { [llength $fall_const] != 0} {
    set data_slews [lindex $fall_const 0]
    set clk_slews [lindex $fall_const 1]
    set check [lindex $fall_const 2]        
    puts "falling values  : $check"
  }
}
puts ""


# ALAPI_delay -return a list of delay and transition data for a pin
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]

set delays [ALAPI_delay $cid "Y"]
puts "Delay and transition data for cell $cell"

foreach delay $delays {
  set related_pin [lindex $delay $ALAPI_RELATED_PIN]
  set when [lindex $delay $ALAPI_WHEN]
  set timing_sense [lindex $delay $ALAPI_TIMING_SENSE]
  set timing_type [lindex $delay $ALAPI_TIMING_TYPE]
  set sdf_cond [lindex $delay $ALAPI_SDF_COND]
      
  puts "related_pin: $related_pin, when:  $when"
  puts "timing_sense: $timing_sense timing_type: $timing_type"
  set data [lindex $delay $ALAPI_CELL_RISE]
  if { [llength $data] != 0} {
    set slews [lindex $data 0]
    set loads [lindex $data 1]
    set values [lindex $data 2]
    puts "index_1 : $slews"
    puts "index_2 : $loads"
    puts "cell rise values  : $values"
  }
  set data [lindex $delay $ALAPI_RISE_TRANSITION]
  if { [llength $data] != 0} {
    set values [lindex $data 2]
    puts "rise transition fall values  : $values"
  }
  set data [lindex $delay $ALAPI_CELL_FALL]
  if { [llength $data] != 0} {
    set values [lindex $data 2]
    puts "cell fall values  : $values"
  }
  set data [lindex $delay $ALAPI_FALL_TRANSITION]
  if { [llength $data] != 0} {
    set values [lindex $data 2]
    puts "fall transition fall values  : $values"
  }
}
puts ""

# ALAPI_footprint - return a cells footprint 
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]
set footprint [ALAPI_footprint $cid]
puts "Footprint for cell $cell is $footprint"
puts ""


# ALAPI_function - returns the function of a pin 
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]
set function [ALAPI_function $cid "Y"]
puts "Function of $cell pin Y is $function"
puts ""
  
# ALAPI_inouts - return a list of inout pins of a cell 
# ALAPI_inputs - return a list of input pins of a cell 
# ALAPI_outputs - return a list of output pins of a cell 
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]
puts "Cell $cell has inputs:"
set inputs [ALAPI_inputs $cid]
foreach pin $inputs {
  puts "$pin"
}
puts ""

set cell "DFFX1"
set cid [ALAPI_cellid $cell]
puts "Cell $cell has outputs:"
set outputs [ALAPI_outputs $cid]
foreach pin $outputs {
  puts "$pin"
}
puts ""

# ALAPI_leakage - returns the leakage power information for a cell
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]
set leakage [ALAPI_leakage $cid]
puts "Leakage information for cell $cell"

foreach lk $leakage {
  set leakage_current [lindex $lk 0]
  set when [lindex $lk $ALAPI_WHEN]
  if {$when == ""} {
    puts "Average leakage $leakage_current"
  } else {
    puts "Leakage $leakage_current when $when"
  }
}
puts ""
# ALAPI_name - returns the name of the library or cell
puts "library name is [ALAPI_name]"
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]
puts "Cell name is [ALAPI_name -cid $cid]"
puts ""
# ALAPI_maxcap - returns the max cap attribute of a pin
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]
set maxcap [ALAPI_maxcap $cid "Y"]
puts "Max capacitance for $cell, pin Y is $maxcap"
puts ""

# ALAPI_noise -return a list of delay and transition data for a pin
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]
set noise_data [ALAPI_noise $cid "Y"]
puts "SI steady state and immunity data for cell $cell pin Y"

foreach noise $noise_data {
  set related_pin [lindex $noise $ALAPI_RELATED_PIN]
  set when [lindex $noise $ALAPI_WHEN]
  set timing_sense [lindex $noise $ALAPI_TIMING_SENSE]
  set timing_type [lindex $noise $ALAPI_TIMING_TYPE]
  set sdf_cond [lindex $noise $ALAPI_SDF_COND]
      
  puts "related_pin: $related_pin, when:  $when"
  puts "timing_sense: $timing_sense timing_type: $timing_type"
  set data [lindex $noise $ALAPI_NOISE_IMMUNITY_LOW]
  if { [llength $data] == 3} {
    set width [lindex $data 0]
    set loads [lindex $data 1]
    set values [lindex $data 2]
    puts "index_1 (noise_width) : $width"
    puts "index_2 (load) : $loads"
    puts "noise immunity low values : $values"
  }
  set data [lindex $noise $ALAPI_NOISE_IMMUNITY_HIGH]
  if { [llength $data] == 3} {
    set values [lindex $data 2]
    puts "noise immunity high values : $values"
  }
  set data [lindex $noise $ALAPI_SI_IV_LOW]
  if { [llength $data] == 2} {
    set volts [lindex $data 0]
    set values [lindex $data 1]
    puts "index_1 (voltage) : $volts"
    puts "steady state current low  : $values"
  }
  set data [lindex $noise $ALAPI_SI_IV_HIGH]
  if { [llength $data] == 2} {
    set values [lindex $data 1]
    puts "steady state current high  : $values"
  }
  puts ""
}

# ALAPI_pincap - returns the input capciatance of a pin
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]
set pincap [ALAPI_pincap $cid "A1"]
puts "Max pin capacitance for $cell, pin A1 is $pincap"
set pincap [ALAPI_pincap $cid "A1" -trans 1]
puts "Rise pin capacitance for $cell, pin A1 is $pincap"
set pincap [ALAPI_pincap $cid "A1" -trans 0]
puts "Fall pin capacitance for $cell, pin A1 is $pincap"
puts ""


# ALAPI_power - return a list of power data for a pin
set cell "DFFX1"
set cid [ALAPI_cellid $cell]

set power_data [ALAPI_power $cid "Q"]
puts "Switching Power for pin Q of cell $cell"

foreach power $power_data {
  set related_pin [lindex $power $ALAPI_RELATED_PIN]
  set when [lindex $power $ALAPI_WHEN]
      
  puts "$related_pin $when"
  set data [lindex $power $ALAPI_RISE_POWER]
  if { [llength $data] != 0} {
    set slews [lindex $data 0]
    set loads [lindex $data 1]
    set values [lindex $data 2]
    puts "index_1 : $slews"
    puts "index_2 : $loads"
    puts "rise switching power values  : $values"
  }
  set data [lindex $power $ALAPI_FALL_POWER]
  if { [llength $data] != 0} {
    set values [lindex $data 2]
    puts "fall switching power values  : $values"
  }
}
puts ""

set power_data [ALAPI_power $cid "CK"]
puts "Passive Power for pin CK of cell $cell"

foreach power $power_data {
  set related_pin [lindex $power $ALAPI_RELATED_PIN]
  set when [lindex $power $ALAPI_WHEN]
      
  puts "$related_pin $when"
  set data [lindex $power $ALAPI_RISE_POWER]
  if { [llength $data] != 0} {
    set slews [lindex $data 0]
    set values [lindex $data 1]
    puts "index_1 : $slews"
    puts "rise passive power values  : $values"
  }
  set data [lindex $power $ALAPI_FALL_POWER]
  if { [llength $data] != 0} {
    set values [lindex $data 1]
    puts "fall passive power values  : $values"
  }
}
puts ""
      
# ALAPI_process - Access the library process info”
# ALAPI_temperature - Access the library temperature
# ALAPI_voltage
# ALAPI_version

set process [ALAPI_process]
puts "Library created at the $process corner"
set temp [ALAPI_temperature]
puts "Library created at the $temp degrees C"
set voltage [ALAPI_voltage]
puts "Library created using a $voltage Volts nominal voltage"
set version [ALAPI_version]
puts "Library created using Liberate $version"
puts ""


# ALAPI_templates - returns a list of templates used to characterize the library

set templates [ALAPI_templates]
foreach template $templates {
  set name [lindex $template 0]
  set data [lindex $template 1]
  puts "Template name $name"
  puts "index_1 : [lindex $data 0 ]"
  puts "values  : [lindex $data 1 ]"
  if {[llength $data] > 2} {
    puts "index_2 : [lindex $data 2]"
    puts "values  : [lindex $data 3]"
  }
}
puts ""

# ALAPI_unit - returns the units for the given data type.
set time_unit [ALAPI_unit "time"]
set leakage_unit [ALAPI_unit "power"]
set power_data_unit [ALAPI_unit "energy"]
set cap_unit [ALAPI_unit "capacitance"]
puts "Delay and transition data is in $time_unit"
puts "Leakage power data is in $leakage_unit"
puts "Switching and passive power data is in $power_data_unit"
puts "Capacitance values are in $cap_unit"


# ALAPI_user_groups - gets user groups from the input library

set user [ALAPI_user_groups]
foreach group $user {
  set name [lindex $group 0] 
  set headname [lindex $group 1] 
  set attrs [lindex $group 2] 
  puts "$name ($headname) \{"
  foreach attr $attrs {
    puts "  [lindex $attr 0] : [lindex $attr 1];"
  }
  puts "\}"
}
puts ""

# ALAPI_min_pulse_width - gets MPW for a pin of a cell 
set cell "DFFX1"
set cid [ALAPI_cellid $cell]
set mpw [ALAPI_min_pulse_width $cid "CK"]
if {[llength $mpw] !=0} {
  set timing_type [lindex $mpw $ALAPI_TIMING_TYPE]  
  puts "$timing_type () \{"
  set mpw_data [lindex $mpw $ALAPI_RISE_CONSTRAINT]  
  set mpw_value [lindex $mpw_data 0]
  set line [format "  constraint_high : %g;" $mpw_value]
  puts $line
  set mpw_data [lindex $mpw $ALAPI_FALL_CONSTRAINT]  
  set line [format "  constraint_low : %g;" $mpw_value]
  puts $line
  set when [lindex $mpw $ALAPI_WHEN]  
  if {$when != ""} {
    puts "  when : \"$when\";"
  }
  puts "\}\n"
}


# ALAPI_sequential - gets sequential data for a cell 
set cell "DFFX1"
set cid [ALAPI_cellid $cell]
set seqs [ALAPI_sequential $cid]
foreach sequential $seqs {

  set seq_type [lindex $sequential $ALAPI_SEQUENTIAL_TYPE]  
  set var1 [lindex $sequential $ALAPI_SEQUENTIAL_VAR1]  
  set var2 [lindex $sequential $ALAPI_SEQUENTIAL_VAR2]  
  set attrs [lindex $sequential $ALAPI_SEQUENTIAL_ATTRS]  

  puts "$seq_type ($var1,$var2) \{"
  foreach attr $attrs {
    puts "  [lindex $attr 0] : [lindex $attr 1];"
  }
  puts "\}\n"
}

# ALAPI_ccs -return a list of ccs data for a pin
set cell "NOR2X1"
set cid [ALAPI_cellid $cell]

set ccs_data [ALAPI_ccs $cid "Y"]

foreach entry $ccs_data {
  set table [lindex $entry $ALAPI_OUTPUT_CURRENT_RISE]  
  foreach vector $table {
    set reftime [lindex $vector 0]
    puts "  vector () \{" 
    puts "    reference_time : $reftime"
    set data [lindex $vector 1]
    if {[llength $data] == 4} { 
      set slew [lindex $data 0]
      set load [lindex $data 1]
      set time [lindex $data 2]
      set values [lindex $data 3]
      puts "    index_1 : $slew"
      puts "    index_2 : $load"
      puts "    index_3 : $time"
      puts "    output current rise : $values"
      puts "  \}\n" 
      # For example - just output a single vector
      break; 
    }
  }
  set data [lindex $entry $ALAPI_RECEIVER_CAP1_RISE]  
  if { [llength $data] == 3} {
    puts "  receiver_cap1_rise () \{" 
    set slews [lindex $data 0]
    set loads [lindex $data 1]
    set values [lindex $data 2]
    puts "    index_1 : $slew"
    puts "    index_2 : $load"
    puts "    receiver cap1 rise : $values"
    puts "  \}\n" 
  }
}
ALAPI_close

