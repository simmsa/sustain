let g:airline#themes#relative#palette = {}

function! airline#themes#relative#refresh()
  let s:N1 = airline#themes#get_highlight('AirlineN1')
  let s:N2 = airline#themes#get_highlight('AirlineN2')
  let s:N3 = airline#themes#get_highlight('AirlineN3')
  let s:NM3 = airline#themes#get_highlight('AirlineN3Modified')

  " Not sure what exactly this does
  let g:airline#themes#relative#palette.accents = {
        \ 'red': airline#themes#get_highlight('Error'),
        \ }

  let g:airline#themes#relative#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#relative#palette.normal_modified = airline#themes#generate_color_map(s:N1, s:N2, s:NM3)

  " Insert Mode
  let s:I1 = airline#themes#get_highlight('AirlineI1')
  let s:I2 = airline#themes#get_highlight('AirlineI2')
  let s:I3 = airline#themes#get_highlight('AirlineI3')
  let g:airline#themes#relative#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#relative#palette.insert_modified = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

  " Replace Mode
  let s:R1 = airline#themes#get_highlight('AirlineR1')
  let s:R2 = airline#themes#get_highlight('AirlineR2')
  let s:R3 = airline#themes#get_highlight('AirlineR3')
  let g:airline#themes#relative#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#relative#palette.replace_modified = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

  " Visual Mode
  let s:V1 = airline#themes#get_highlight('AirlineV1')
  let s:V2 = airline#themes#get_highlight('AirlineV2')
  let s:V3 = airline#themes#get_highlight('AirlineV3')
  let g:airline#themes#relative#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#relative#palette.visual_modified = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

  " Inactive
  let s:IA1 = airline#themes#get_highlight('AirlineIA1')
  let s:IA2 = airline#themes#get_highlight('AirlineIA2')
  let s:IA3 = airline#themes#get_highlight('AirlineIA3')
  let g:airline#themes#relative#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#relative#palette.inactive_modified = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

  " Tabs
  let s:TabBase = airline#themes#get_highlight('AirlineTabBase')
  let s:TabSel = airline#themes#get_highlight('AirlineTabSel')
  let s:TabRightBox = airline#themes#get_highlight('AirlineTabRightBox')
  let s:TabBg = airline#themes#get_highlight('AirlineTabBg')
  let s:TabSelMod = airline#themes#get_highlight('AirlineTabSelMod')
  let s:TabUnSel = airline#themes#get_highlight('AirlineTabUnSel')
  let s:TabUnSelMod = airline#themes#get_highlight('AirlineTabUnSelMod')

  let g:airline#themes#relative#palette.tabline = {}
  let g:airline#themes#relative#palette.tabline.airline_tab = s:TabBase
  let g:airline#themes#relative#palette.tabline.airline_tabsel = s:TabSel
  let g:airline#themes#relative#palette.tabline.airline_tabtype = s:TabRightBox
  let g:airline#themes#relative#palette.tabline.airline_tabfill = s:TabBg
  let g:airline#themes#relative#palette.tabline.airline_tabmod = s:TabSelMod
  let g:airline#themes#relative#palette.tabline.airline_tabhid = s:TabUnSel
  let g:airline#themes#relative#palette.tabline.airline_tabmod_unsel = s:TabUnSelMod

  " Warnings & Errors
  let s:Error = airline#themes#get_highlight('AirlineError')
  let s:ErrorInactive = airline#themes#get_highlight('AirlineErrorInactive')
  let s:Warning = airline#themes#get_highlight('AirlineWarning')
  let s:WarningInactive = airline#themes#get_highlight('AirlineWarningInactive')

  " Warnings
  let g:airline#themes#relative#palette.normal.airline_warning = s:Warning
  let g:airline#themes#relative#palette.normal.airline_warning_inactive = s:WarningInactive
  let g:airline#themes#relative#palette.normal_modified.airline_warning = s:Warning
  let g:airline#themes#relative#palette.normal.airline_error = s:Error
  let g:airline#themes#relative#palette.normal.airline_error_inactive = s:ErrorInactive
  let g:airline#themes#relative#palette.normal_modified.airline_error = s:Error

  " Neovim Terminal
  let s:TE1 = airline#themes#get_highlight('AirlineTE1')
  let s:TE2 = airline#themes#get_highlight('AirlineTE2')
  let s:TE3 = airline#themes#get_highlight('AirlineTE3')
  let g:airline#themes#relative#palette.terminal = airline#themes#generate_color_map(s:TE1, s:TE2, s:TE3)
endfunction

call airline#themes#relative#refresh()

