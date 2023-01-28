"                _        _
"  ___ _   _ ___| |_ __ _(_)_ __
" / __| | | / __| __/ _` | | '_ \
" \__ \ |_| \__ \ || (_| | | | | |
" |___/\__,_|___/\__\__,_|_|_| |_|
"
" Insanely customizable vim color scheme.
"
" About {{{
"
" By: Andrew Simms, http://andrewdsimms.com
" Available at https://github.com/simmsa/sustain
"
" A colorscheme using colors with colors of similar contrast ratios for
" similar groups. The desired effect is a colorscheme that offers clear
" syntax differences and is pleasing to read for long periods of time.
"
" Color Palate from www.google.com/design/spec/style/color.html
" Inspiration and rough template from Badwolf by Steve Losh,
" https://github.com/sjl/badwolf/ and Gruvbox
" https://github.com/morhetz/gruvbox
"
" }}}
" Initiation {{{

if v:version > 580
    hi clear
    if exists('syntax on')
        syntax reset
    endif
endif

let g:colors_name = 'sustain'

if !has('gui_running') && &t_Co != 256
    finish
endif

set background=dark

" }}}
" Colors {{{

" Google Palate Colors ------------------------------------------------- {{{

" Derived from www.google.com/design/spec/style/color.html
"
" Term colors approximated with https://gist.github.com/MicahElliott/719710
" from @MicahElliott

" Structure:
" Colors are separated into hex and cterm dictionaries. There
" are two intensities of colors, normal with 10 shades per color, and
" accent with 4 shades per color. This allows for 4 contrast levels
"
" Brightness:
" Colors are arranged from light to dark within their respective dictionaries
" with the lightest being the lowest index (0) and darkest being the highest
" index (9 for normal and 3 for accent)

let s:red = {
\    'name': 'red',
\    'hex': {
\        'normal': [
\            '#ffebee',
\            '#ffcdd2',
\            '#ef9a9a',
\            '#e57373',
\            '#ef5350',
\            '#f44337',
\            '#e53935',
\            '#d32f2f',
\            '#c62828',
\            '#b71c1c'
\        ],
\        'accent': [
\            '#ff8a80',
\            '#ff5252',
\            '#ff1744',
\            '#d50000'
\        ],
\    },
\    'term': {
\        'normal': [
\            '231',
\            '224',
\            '210',
\            '174',
\            '203',
\            '203',
\            '167',
\            '160',
\            '160',
\            '124'
\        ],
\        'accent': [
\            '210',
\            '203',
\            '197',
\            '160'
\        ],
\    },
\}

let s:pink = {
\    'name': 'pink',
\    'hex': {
\        'normal': [
\            '#fce4ec',
\            '#f8bbd0',
\            '#f48fb1',
\            '#f06292',
\            '#ec407a',
\            '#e91e63',
\            '#d81b60',
\            '#c2185b',
\            '#ad1457',
\            '#880e4f'
\        ],
\        'accent': [
\            '#ff80ab',
\            '#ff4081',
\            '#f50057',
\            '#c51162'
\        ],
\    },
\    'term': {
\        'normal': [
\            '225',
\            '218',
\            '211',
\            '204',
\            '204',
\            '161',
\            '161',
\            '125',
\            '125',
\            '89'
\        ],
\        'accent': [
\            '211',
\            '204',
\            '197',
\            '161'
\        ],
\    },
\}

let s:purple = {
\    'name': 'purple',
\    'hex': {
\        'normal': [
\            '#f3e5f5',
\            '#e1bee7',
\            '#ce93d8',
\            '#ba68c8',
\            '#ab47bc',
\            '#9c27b0',
\            '#8e24aa',
\            '#7b1fa2',
\            '#6a1b9a',
\            '#4a148c'
\        ],
\        'accent': [
\            '#ea80fc',
\            '#e040fb',
\            '#d500f9',
\            '#aa00ff'
\        ],
\    },
\    'term': {
\        'normal': [
\            '225',
\            '182',
\            '176',
\            '134',
\            '133',
\            '127',
\            '91',
\            '91',
\            '54',
\            '54'
\        ],
\        'accent': [
\            '177',
\            '171',
\            '165',
\            '129'
\        ],
\    },
\}

let s:deep_purple = {
\    'name': 'deep_purple',
\    'hex': {
\        'normal': [
\            '#ede7f6',
\            '#d1c4e9',
\            '#b39ddb',
\            '#9575cd',
\            '#7e57c2',
\            '#673ab7',
\            '#5e35b1',
\            '#512da8',
\            '#4527a0',
\            '#311b92'
\        ],
\        'accent': [
\            '#b388ff',
\            '#7c4dff',
\            '#651fff',
\            '#6200ea'
\        ],
\    },
\    'term': {
\        'normal': [
\            '225',
\            '188',
\            '146',
\            '104',
\            '97',
\            '61',
\            '61',
\            '55',
\            '55',
\            '54'
\        ],
\        'accent': [
\            '141',
\            '99',
\            '57',
\            '56'
\        ],
\    },
\}

let s:indigo = {
\    'name': 'indigo',
\    'hex': {
\        'normal': [
\            '#e8eaf6',
\            '#c5cae9',
\            '#9fa8da',
\            '#7986cb',
\            '#5c6bc0',
\            '#3f51b5',
\            '#3949ab',
\            '#303f9f',
\            '#283593',
\            '#1a237e'
\        ],
\        'accent': [
\            '#8c9eff',
\            '#536dfe',
\            '#3d5afe',
\            '#304ffe'
\        ],
\    },
\    'term': {
\        'normal': [
\            '189',
\            '188',
\            '146',
\            '104',
\            '61',
\            '61',
\            '61',
\            '61',
\            '24',
\            '18'
\        ],
\        'accent': [
\            '111',
\            '63',
\            '63',
\            '63'
\        ],
\    },
\}

let s:blue = {
\    'name': 'blue',
\    'hex': {
\        'normal': [
\            '#e3f2fd',
\            '#bbdefb',
\            '#90caf9',
\            '#64b5f6',
\            '#42a5f5',
\            '#2196f3',
\            '#1e88e5',
\            '#1976d2',
\            '#1565c0',
\            '#0d47a1'
\        ],
\        'accent': [
\            '#82b1ff',
\            '#448aff',
\            '#2979ff',
\            '#2962ff'
\        ],
\    },
\    'term': {
\        'normal': [
\            '195',
\            '153',
\            '117',
\            '75',
\            '75',
\            '33',
\            '32',
\            '32',
\            '25',
\            '25'
\        ],
\        'accent': [
\            '111',
\            '69',
\            '33',
\            '27'
\        ],
\    },
\}

let s:soft_blue = {
\    'name': 'soft_blue',
\    'hex': {
\        'normal': [
\            '#e1f5fe',
\            '#b3e5fc',
\            '#81d4fa',
\            '#4fc3f7',
\            '#29b6f6',
\            '#03a9f4',
\            '#039be5',
\            '#0288d1',
\            '#0277bd',
\            '#01579b'
\        ],
\        'accent': [
\            '#80d8ff',
\            '#40c4ff',
\            '#00b0ff',
\            '#0091ea'
\        ],
\    },
\    'term': {
\        'normal': [
\            '195',
\            '153',
\            '117',
\            '81',
\            '39',
\            '39',
\            '38',
\            '32',
\            '31',
\            '25'
\        ],
\        'accent': [
\            '117',
\            '81',
\            '39',
\            '32'
\        ],
\    },
\}

let s:cyan = {
\    'name': 'cyan',
\    'hex': {
\        'normal': [
\            '#e0f7fa',
\            '#b2ebf2',
\            '#80deea',
\            '#4dd0e1',
\            '#26c6da',
\            '#00bcd4',
\            '#00acc1',
\            '#0097a7',
\            '#00838f',
\            '#006064'
\        ],
\        'accent': [
\            '#84ffff',
\            '#18ffff',
\            '#00e5ff',
\            '#00b8d4'
\        ],
\    },
\    'term': {
\        'normal': [
\            '195',
\            '159',
\            '116',
\            '80',
\            '44',
\            '38',
\            '37',
\            '31',
\            '30',
\            '23'
\        ],
\        'accent': [
\            '123',
\            '14',
\            '45',
\            '38'
\        ],
\    },
\}

let s:teal = {
\    'name': 'teal',
\    'hex': {
\        'normal': [
\            '#e0f2f1',
\            '#b2dfdb',
\            '#80cbc4',
\            '#4db6ac',
\            '#26a69a',
\            '#009688',
\            '#00897b',
\            '#00796b',
\            '#00695c',
\            '#004d40'
\        ],
\        'accent': [
\            '#a7ffeb',
\            '#64ffda',
\            '#1de9b6',
\            '#00bfa5'
\        ],
\    },
\    'term': {
\        'normal': [
\            '195',
\            '152',
\            '116',
\            '73',
\            '36',
\            '30',
\            '30',
\            '29',
\            '23',
\            '23'
\        ],
\        'accent': [
\            '159',
\            '86',
\            '43',
\            '37'
\        ],
\    },
\}

let s:green = {
\    'name': 'green',
\    'hex': {
\        'normal': [
\            '#e8f5e9',
\            '#c8e6c9',
\            '#a5d6a7',
\            '#81c784',
\            '#66bb6a',
\            '#4caf50',
\            '#43a047',
\            '#388e3c',
\            '#2e7d32',
\            '#1b5e20'
\        ],
\        'accent': [
\            '#b9f6ca',
\            '#69f0ae',
\            '#00e676',
\            '#00c853'
\        ],
\    },
\    'term': {
\        'normal': [
\            '194',
\            '188',
\            '151',
\            '114',
\            '71',
\            '71',
\            '71',
\            '65',
\            '29',
\            '22'
\        ],
\        'accent': [
\            '158',
\            '85',
\            '42',
\            '41'
\        ],
\    },
\}

let s:soft_green = {
\    'name': 'soft_green',
\    'hex': {
\        'normal': [
\            '#f1f8e9',
\            '#dcedc8',
\            '#c5e1a5',
\            '#aed581',
\            '#9ccc65',
\            '#8bc34a',
\            '#7cb342',
\            '#689f38',
\            '#558b2f',
\            '#33691e'
\        ],
\        'accent': [
\            '#ccff90',
\            '#b2ff59',
\            '#76ff03',
\            '#64dd17'
\        ],
\    },
\    'term': {
\        'normal': [
\            '230',
\            '194',
\            '187',
\            '150',
\            '149',
\            '113',
\            '107',
\            '71',
\            '64',
\            '58'
\        ],
\        'accent': [
\            '192',
\            '155',
\            '118',
\            '76'
\        ],
\    },
\}

let s:lime = {
\    'name': 'lime',
\    'hex': {
\        'normal': [
\            '#f9fbe7',
\            '#f0f4c3',
\            '#e6ee9c',
\            '#dce775',
\            '#d4e157',
\            '#cddc39',
\            '#c0ca33',
\            '#afb42b',
\            '#9e9d24',
\            '#827717'
\        ],
\        'accent': [
\            '#f4ff81',
\            '#eeff41',
\            '#c6ff00',
\            '#aeea00'
\        ],
\    },
\    'term': {
\        'normal': [
\            '230',
\            '230',
\            '193',
\            '186',
\            '185',
\            '185',
\            '149',
\            '142',
\            '142',
\            '100'
\        ],
\        'accent': [
\            '228',
\            '227',
\            '190',
\            '148'
\        ],
\    },
\}

let s:yellow = {
\    'name': 'yellow',
\    'hex': {
\        'normal': [
\            '#fffde7',
\            '#fff9c4',
\            '#fff59d',
\            '#fff176',
\            '#ffee58',
\            '#ffeb3b',
\            '#fdd835',
\            '#fbc02d',
\            '#f9a825',
\            '#f57f17'
\        ],
\        'accent': [
\            '#ffff8d',
\            '#ffff00',
\            '#ffea00',
\            '#ffd600'
\        ],
\    },
\    'term': {
\        'normal': [
\            '230',
\            '230',
\            '229',
\            '228',
\            '227',
\            '227',
\            '221',
\            '214',
\            '214',
\            '208'
\        ],
\        'accent': [
\            '228',
\            '11',
\            '220',
\            '220'
\        ],
\    },
\}

let s:amber = {
\    'name': 'amber',
\    'hex': {
\        'normal': [
\            '#fff8e1',
\            '#ffecb3',
\            '#ffe082',
\            '#ffd54f',
\            '#ffca28',
\            '#ffc107',
\            '#ffb300',
\            '#ffa000',
\            '#ff8f00',
\            '#ff6f00'
\        ],
\        'accent': [
\            '#ffe57f',
\            '#ffd740',
\            '#ffc400',
\            '#ffab00'
\        ],
\    },
\    'term': {
\        'normal': [
\            '230',
\            '229',
\            '222',
\            '221',
\            '220',
\            '214',
\            '214',
\            '214',
\            '208',
\            '202'
\        ],
\        'accent': [
\            '222',
\            '221',
\            '220',
\            '214'
\        ],
\    },
\}

let s:orange = {
\    'name': 'orange',
\    'hex': {
\        'normal': [
\            '#fff3e0',
\            '#ffe0b2',
\            '#ffcc80',
\            '#ffb74d',
\            '#ffa726',
\            '#ff9800',
\            '#fb8c00',
\            '#f57c00',
\            '#ef6c00',
\            '#e65100'
\        ],
\        'accent': [
\            '#ffd180',
\            '#ffab40',
\            '#ff9100',
\            '#ff6d00'
\        ],
\    },
\    'term': {
\        'normal': [
\            '230',
\            '223',
\            '222',
\            '215',
\            '214',
\            '208',
\            '208',
\            '208',
\            '202',
\            '166'
\        ],
\        'accent': [
\            '222',
\            '215',
\            '208',
\            '202'
\        ],
\    },
\}

let s:deep_orange = {
\    'name': 'deep_orange',
\    'hex': {
\        'normal': [
\            '#fbe9e7',
\            '#ffccbc',
\            '#ffab91',
\            '#ff8a65',
\            '#ff7043',
\            '#ff5722',
\            '#f4511e',
\            '#e64a19',
\            '#d84315',
\            '#bf360c'
\        ],
\        'accent': [
\            '#ff9e80',
\            '#ff6e40',
\            '#ff3d00',
\            '#dd2c00'
\        ],
\    },
\    'term': {
\        'normal': [
\            '224',
\            '223',
\            '216',
\            '209',
\            '203',
\            '202',
\            '202',
\            '166',
\            '166',
\            '130'
\        ],
\        'accent': [
\            '216',
\            '203',
\            '202',
\            '160'
\        ],
\    },
\}

\" No Accents
let s:grey = {
\    'name': 'grey',
\    'hex': {
\        'normal': [
\            '#fafafa',
\            '#f5f5f5',
\            '#eeeeee',
\            '#e0e0e0',
\            '#bdbdbd',
\            '#9e9e9e',
\            '#757575',
\            '#616161',
\            '#424242',
\            '#212121'
\        ]
\    },
\    'term': {
\        'normal': [
\            '231',
\            '231',
\            '231',
\            '188',
\            '145',
\            '145',
\            '102',
\            '59',
\            '59',
\            '16'
\        ]
\    },
\}

let s:blue_grey = {
\    'name': 'blue_grey',
\    'hex': {
\        'normal': [
\            '#eceff1',
\            '#cfd8dc',
\            '#b0bec5',
\            '#90a4ae',
\            '#78909c',
\            '#607d8b',
\            '#546e7a',
\            '#455a64',
\            '#37474f',
\            '#263238'
\        ]
\    },
\    'term': {
\        'normal': [
\            '231',
\            '188',
\            '146',
\            '109',
\            '103',
\            '66',
\            '60',
\            '59',
\            '59',
\            '23'
\        ]
\    },
\}

let s:brown = {
\    'name': 'brown',
\    'hex': {
\        'normal': [
\            '#efebe9',
\            '#d7ccc8',
\            '#bcaaa4',
\            '#a1887f',
\            '#8d6e63',
\            '#795548',
\            '#6d4c41',
\            '#5d4037',
\            '#4e342e',
\            '#3e2723'
\        ]
\    },
\    'term': {
\        'normal': [
\            '230',
\            '188',
\            '145',
\            '138',
\            '95',
\            '95',
\            '59',
\            '59',
\            '58',
\            '52'
\        ]
\    },
\}

" End Google Palate Colors --------------------------------------------- }}}
" Ui Colors ------------------------------------------------------------ {{{

" HSL(200, 100, 0) - HSL(200, 100, 40) in 5% increments
let s:bg = {
\    'name': 'bg',
\    'hex': {
\        'normal': [
\            '#004466',
\            '#003c59',
\            '#00334d',
\            '#002b40',
\            '#002233',
\            '#001a26',
\            '#00111a',
\            '#00090d',
\            '#000000',
\        ]
\    },
\    'term': {
\        'normal': [
\            '23',
\            '23',
\            '23',
\            '17',
\            '17',
\            '16',
\            '16',
\            '16',
\            '16',
\        ]
\    }
\}

" HSL(200, 0, 100) - HSL(200, 40, 100) in 5% increments
let s:bg_light = {
\    'name': 'bg',
\    'hex': {
\        'normal': [
\            '#ffffff',
\            '#f2fbff',
\            '#e5f6ff',
\            '#d9f2ff',
\            '#cceeff',
\            '#bfeaff',
\            '#b2e5ff',
\            '#a6e1ff',
\            '#99ddff',
\        ]
\    },
\    'term': {
\        'normal': [
\            '23',
\            '23',
\            '23',
\            '17',
\            '17',
\            '16',
\            '16',
\            '16',
\            '16',
\        ]
\    }
\}

" HSL (200, 100, x) 90, 80, 70, 60, 50, 40, 30, 20, 17, 15, 13, 10, 7, 5
let s:gui = {
\    'name': 'gui',
\    'hex': {
\        'normal': [
\            '#cceeff',
\            '#99ddff',
\            '#69ccff',
\            '#33bbff',
\            '#00aaff',
\            '#0088cc',
\            '#006699',
\            '#004466',
\            '#003a57',
\            '#00334d',
\            '#002c42',
\            '#002233',
\            '#001824',
\            '#00111a',
\        ]
\    },
\    'term': {
\        'normal': [
\            '195',
\            '117',
\            '81',
\            '75',
\            '39',
\            '32',
\            '24',
\            '23',
\            '23',
\            '23',
\            '17',
\            '17',
\            '16',
\            '16',
\        ]
\    }
\}

" End Ui Colors -------------------------------------------------------- }}}
" Color Lists ---------------------------------------------------------- {{{

let s:all_colors = [
\    s:red,
\    s:pink,
\    s:purple,
\    s:deep_purple,
\    s:indigo,
\    s:blue,
\    s:soft_blue,
\    s:cyan,
\    s:teal,
\    s:green,
\    s:soft_green,
\    s:lime,
\    s:yellow,
\    s:amber,
\    s:orange,
\    s:deep_orange,
\    s:grey,
\    s:blue_grey,
\    s:brown,
\    s:bg,
\    s:gui,
\]

function! s:FormatColor(color)
    return join(map(split(a:color, '_'), 's:Capitalize(v:val)'), '')
endfunction

function! s:Capitalize(input)
    return toupper(a:input[0]) . a:input[1:]
endfunction

let s:all_color_names= map(deepcopy(s:all_colors), 'v:val.name')
let s:all_color_names_formatted = map(deepcopy(s:all_colors), 's:FormatColor(v:val.name)')

" End Color Lists ------------------------------------------------------ }}}

" }}}
" Constants ----------------------------------------------------------- {{{

let s:BRIGHTNESS_MIN = 0
let s:BRIGHTNESS_MAX = 10
let s:BRIGHTNESS_DEFAULT = 5

let s:CONTRAST_MIN = -5
let s:CONTRAST_MAX = 5
let s:CONTRAST_DEFAULT = 3

let s:shade = {
\    'light': 'light',
\    'medium': 'medium',
\    'dark': 'dark',
\    'accent': 'accent'
\}

" Order shades according to brightness
let s:all_shades = [
\    s:shade.light,
\    s:shade.medium,
\    s:shade.dark,
\    s:shade.accent,
\]

let s:all_shades_formatted = map(deepcopy(s:all_shades), 's:Capitalize(v:val)')

let s:target = {
\    'code': 'code',
\    'ui': 'ui',
\}

" End Constants ------------------------------------------------------- }}}
" Customizable Settings ------------------------------------------------ {{{

" Settings for both the code and the ui, used if there is no target specific
" setting
let s:current_brightness = get(g:, 'sustain#brightness', s:BRIGHTNESS_DEFAULT)
let s:current_contrast = get(g:, 'sustain#contrast', s:CONTRAST_DEFAULT)

" Settings for each target separately, allows the user to have different
" brightness and contrast settings for the code and ui
let s:code_brightness = get(g:, 'sustain#code#brightness', s:current_brightness)
let s:code_contrast = get(g:, 'sustain#code#contrast', s:current_contrast)

let s:ui_brightness = get(g:, 'sustain#ui#brightness', s:current_brightness)
let s:ui_contrast = get(g:, 'sustain#ui#contrast', s:current_contrast)

" Initialize highlight groups for customizing colors:
" let s:link_colors = get(g:, 'sustain#link_colors', 1)
let s:link_colors = 0

" Save dynamically set colors with CustomHighlightAtCursor
let s:save_custom_colors = get(g:, 'sustain#save_custom_colors', 1)

" Save settings to the vimrc directory by default
" let s:vimrc_dir = fnamemodify(expand("$MYVIMRC"), ':p:h')
let s:vimrc_dir = fnamemodify(expand('~/.local/share/nvim'), ':p:h')
let s:settings_file = 'sustain_saved_settings.vim'
" The file separator should be the first character in the vimrc directory
let s:f_sep = s:vimrc_dir[0]
let s:custom_colors_file = get(g:, 'sustain#custom_colors_file', s:vimrc_dir . s:f_sep . s:settings_file)

" enable cj, ck maps for incrementing color changes. Adds some overhead as the
" current settings are held in a dict for parsing
let s:increment_colors = get(g:, 'sustain#increment_colors', 1)

" Ask to save colors on some event
let s:ask_to_save = get(g:, 'sustain#ask_to_save', 1)

let s:enable_maps = get(g:, 'sustain#enable_maps', 0)

let s:normal_always_white = v:false

" End Customizable Settings -------------------------------------------- }}}
" Script Scope --------------------------------------------------------- {{{

if s:increment_colors
    let s:code_hi = {}
endif

" End Script Scope ----------------------------------------------------- }}}
" Functions {{{

function! s:GetColors(color, brightness, contrast)
    " Schema for returned value
    let l:shade = {
    \    'name': '',
    \    'hex': {
    \        'light': '',
    \        'medium': '',
    \        'dark': '',
    \        'accent': ''
    \    },
    \    'term': {
    \        'light': '',
    \        'medium': '',
    \        'dark': '',
    \        'accent': ''
    \    }
    \ }

    let l:shade.name = a:color.name

    let l:brightness = SanitizeValue(a:brightness, s:BRIGHTNESS_MIN, s:BRIGHTNESS_MAX)
    let l:contrast = SanitizeValue(a:contrast, s:CONTRAST_MIN, s:CONTRAST_MAX)

    " Calculate the medium shade based on the input brightness
    let l:last_pos = len(a:color.hex.normal) - 1
    let l:medium_shade_pos = BrightnessPos(a:brightness, s:BRIGHTNESS_MIN, s:BRIGHTNESS_MAX, l:last_pos)
    let l:medium_shade_pos = SanitizeValue(l:medium_shade_pos, 0, l:last_pos)

    " Calculate the light and dark shades based on the contrast
    let l:light_shade_pos = l:medium_shade_pos - l:contrast
    let l:dark_shade_pos = l:medium_shade_pos + l:contrast

    " Make sure the values don't exceed the array boundaries
    let l:light_shade_pos = SanitizeValue(l:light_shade_pos, 0, l:last_pos)
    let l:dark_shade_pos = SanitizeValue(l:dark_shade_pos, 0, l:last_pos)

    let g:shade_pos = [l:light_shade_pos, l:medium_shade_pos, l:dark_shade_pos]

    let l:shade.hex.light = a:color.hex.normal[l:light_shade_pos]
    let l:shade.term.light = a:color.term.normal[l:light_shade_pos]

    let l:shade.hex.medium = a:color.hex.normal[l:medium_shade_pos]
    let l:shade.term.medium = a:color.term.normal[l:medium_shade_pos]

    let l:shade.hex.dark = a:color.hex.normal[l:dark_shade_pos]
    let l:shade.term.dark = a:color.term.normal[l:dark_shade_pos]

    let l:has_accent = type(get(a:color.hex, 'accent')) == type([])

    if l:has_accent
        let l:accent_max = len(a:color.hex.accent) - 1
        let l:accent_pos = BrightnessPos(a:brightness, s:BRIGHTNESS_MIN, s:BRIGHTNESS_MAX, l:accent_max, -0.99)

        let l:hex_shade = a:color.hex.accent[l:accent_pos]
        let l:term_shade = a:color.term.accent[l:accent_pos]

        let l:shade.hex.accent = l:hex_shade
        let l:shade.term.accent = l:term_shade
    else
        " If there is no accent use the medium shade
        let l:shade.hex.accent = a:color.hex.normal[l:medium_shade_pos]
        let l:shade.term.accent = a:color.term.normal[l:medium_shade_pos]
    endif

    return l:shade
endfunction

" Optionally add a weight, ( > 0 more bright, < 0 less bright )
function! BrightnessPos(input, input_min, input_max, array_max, ...)
    let l:weight = get(a:000, 0, 0.0)
    let l:input_percent = (a:input * (1.0 + l:weight)) / ((a:input_max - a:input_min) * 1.0)
    let l:inverse_percent = 1.0 - l:input_percent
    return SanitizeValue(float2nr(l:inverse_percent * a:array_max), 0, a:array_max)
endfunction

" Make sure the input does not exceed its bounds
function! SanitizeValue(input, min, max)
    if(a:input > a:max)
        return a:max
    elseif(a:input < a:min)
        return a:min
    else
        return a:input
    endif
endfunction

function! GetHexColor(color, shade)
    return s:GetColors(a:color, s:current_brightness, s:current_contrast).hex[a:shade]
endfunction

function! GetHexAndTermColor(color, shade)
        return s:GetColors(a:color, s:current_brightness, s:current_contrast)
endfunction

function! GetCustomHexAndTermColor(color, brightness, contrast)
        return s:GetColors(a:color, a:brightness, a:contrast)
endfunction

function! s:HiAll(group, target, fg_color, fg_shade, bg_color, bg_shade, attr)
    let l:default = 'NONE'

    if !empty(a:fg_color)
        let [l:guifg, l:ctermfg] = s:GetColorForHi(a:fg_color, a:fg_shade, a:target)
    else
        let [l:guifg, l:ctermfg] = [l:default, l:default]
    endif

    if !empty(a:bg_color)
        let [l:guibg, l:ctermbg] = s:GetColorForHi(a:bg_color, a:bg_shade, a:target)
    else
        let [l:guibg, l:ctermbg] = [l:default, l:default]
    endif

    if !empty(a:attr)
        let l:attr = a:attr
    else
        let l:attr = l:default
    endif

    if type(a:group) == type('string')
        call s:Hi(a:group, l:guifg, l:ctermfg, l:guibg, l:ctermbg, l:attr)
    else
        for l:g in a:group
            call s:Hi(l:g, l:guifg, l:ctermfg, l:guibg, l:ctermbg, l:attr)
        endfor
    endif
endfunction

function! s:Hi(group, guifg, ctermfg, guibg, ctermbg, attr)
    let l:hi_string = 'hi! %s guifg=%s ctermfg=%s guibg=%s ctermbg=%s cterm=%s gui=%s'

    let l:guifg = a:guifg
    let l:ctermfg = a:ctermfg
    " if(a:group ==# 'Normal' && s:normal_always_white)
    "     let l:guifg = '#dddddd'
    "     let l:ctermfg = 255
    " endif
    execute printf(l:hi_string, a:group, l:guifg, l:ctermfg, a:guibg, a:ctermbg, a:attr, a:attr)
endfunction

function! s:GetColorForHi(color, shade, target)
    let l:color = g:sustain#colors_cache[a:target][a:color.name]

    return [l:color.hex[a:shade], l:color.term[a:shade]]
endfunction

" Optionally add attr (bold, underline, etc) as the last argument
function! s:HiFgCode(group, color, shade, ...)
    " let l:shade = (a:group ==# "Normal" && s:normal_always_white s:shade.)
    let l:attr = get(a:000, 0, '')
    if s:increment_colors

        if type(a:group) == type('string')
            let l:syn_groups = [a:group]
        else
            let l:syn_groups = copy(a:group)
        endif

        for l:entry in l:syn_groups
            let s:code_hi[l:entry] = {}
            let s:code_hi[l:entry]['fgcolor'] = a:color.name
            let s:code_hi[l:entry]['fgshade'] = a:shade
        endfor
    endif
    call s:HiAll(a:group, s:target.code, a:color, a:shade, '', '', l:attr)
endfunction

" Optionally add attr (bold, underline, etc) as the last argument
function! s:HiCode(group, fg_color, fg_shade, bg_color, bg_shade, ...)
    let l:attr = get(a:000, 0, '')
    call s:HiAll(a:group, s:target.code, a:fg_color, a:fg_shade, a:bg_color, a:bg_shade, l:attr)
endfunction

" Optionally add attr (bold, underline, etc) as the last argument
function! s:HiFgUi(group, color, shade, ...)
    let l:attr = get(a:000, 0, '')
    call s:HiAll(a:group, s:target.ui, a:color, a:shade, '', '', l:attr)
endfunction

" Optionally add attr (bold, underline, etc) as the last argument
function! s:HiUi(group, fg_color, fg_shade, bg_color, bg_shade, ...)
    let l:attr = get(a:000, 0, '')
    call s:HiAll(a:group, s:target.ui, a:fg_color, a:fg_shade, a:bg_color, a:bg_shade, l:attr)
endfunction

" Commands are cleaner than using `call`
command! -nargs=+ HiFgCode call s:HiFgCode(<args>)
command! -nargs=+ HiCode call s:HiCode(<args>)

command! -nargs=+ HiFgUi call s:HiFgUi(<args>)
command! -nargs=+ HiUi call s:HiUi(<args>)

" }}}
" Cache Colors -------------------------------------------------------- {{{

function! s:CacheColors(colors, brightness, contrast)
    let l:result = {}
    for l:color in a:colors
        let l:result[l:color.name] = s:GetColors({'s:' . color.name}, a:brightness, a:contrast)
    endfor
    return l:result
endfunction

function! s:CacheColorGroup(name, colors)
    if !exists('g:sustain#colors_cache')
        let g:sustain#colors_cache = {}
    endif
    let l:script_brightness = {"s:" . a:name . "_brightness"}
    let l:script_contrast = {"s:" . a:name . "_contrast"}

    let l:prev_brightness = get(g:, 'sustain#colors_cache.' . a:name . '_brightness', '')
    let l:prev_contrast = get(g:, 'sustain#colors_cache.' . a:name . '_contrast', '')

    let l:true = 1
    let l:false = 0

    let l:do_cache = l:false

    " Check if the colors cache exist and the brightnesses and contrasts
    " match the user settings
    if(!empty(l:prev_brightness) || l:prev_brightness != l:script_brightness)
        let l:do_cache = l:true
    endif

    if(!empty(l:prev_contrast) || l:prev_contrast != l:script_contrast)
        let l:do_cache = l:true
    endif

    if(l:do_cache)
        let g:sustain#colors_cache[a:name . '_brightness'] = l:script_brightness
        let g:sustain#colors_cache[a:name . '_contrast'] = l:script_contrast
        let g:sustain#colors_cache[a:name] = s:CacheColors(a:colors, l:script_brightness, l:script_contrast)
    endif
endfunction

call s:CacheColorGroup(s:target.code, s:all_colors)
call s:CacheColorGroup(s:target.ui, s:all_colors)

" Builds color information for s:HiSustainLinkGroups and
" s:HiSustainUnlinkGroups
" Retval: {shade: string, shade_key: string, color: object, group: string}
function! s:BuildColorsDict(target, colors)
    let l:result = []
    for l:color in a:colors
        for l:shade in keys(s:shade)
            let l:shade_key = l:shade
            if(l:shade == s:shade.medium)
                let l:shade = ''
            else
                let l:shade = s:Capitalize(l:shade)
            endif
            let l:name = s:FormatColor(l:color.name)
            let l:group = 'Sustain' . s:Capitalize(a:target) . l:shade . l:name
            let l:dict = {'shade_key': l:shade_key, 'color': l:color, 'group': l:group}
            call add(l:result, l:dict)
        endfor
    endfor
    return l:result
endfunction

" Link each color to a Easily identifiable group
" s:green dark ui -> SustainUiDarkGreen
" Useful for linking plugin settings to sustain colors:
" hi link GitGutterAdd SustainUiGreen
function! s:HiSustainLinkGroups(target, colors)
    let l:hi_list = s:BuildColorsDict(a:target, a:colors)
    for l:hi in l:hi_list
        call s:HiAll(l:hi.group, a:target, {'s:' . l:hi.color.name}, s:shade[l:hi.shade_key], '', '', '')
    endfor
endfunction

function! s:HiSustainUnlinkGroups(target, colors)
    let l:hi_list = s:BuildColorsDict(a:target, a:colors)
    for l:hi in l:hi_list
        exe 'hi clear ' . l:hi.group
    endfor
endfunction

" End Cache Colors ---------------------------------------------------- }}}
" Utilities ------------------------------------------------------------ {{{

function! s:ErrorMsg(error_msg)
    let l:preamble = 'Sustain Error: '
    exe 'echohl ErrorMsg | echo "' . l:preamble . a:error_msg . '" | echohl None'
endfunction

function! s:SyntaxGroupAtCursor()
    return synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
endfunction

function! s:HiCommandAtCursor()
    let l:id =  synIDtrans(synID(line('.'), col('.'), 1))
    let l:default = 'NONE'
    let l:syn = {}

    let l:syn.name = synIDattr(l:id, 'name')

    let l:syn.fg = {}
    let l:syn.fg.hex = synIDattr(l:id, 'fg#')
    if empty(l:syn.fg.hex)
        let l:syn.fg.hex = l:default
        let l:syn.fg.term = synIDattr(l:id, 'fg')
    else
        let l:syn.fg.term = l:default
    endif

    let l:syn.bg = {}
    let l:syn.bg.hex = synIDattr(l:id, 'bg#')
    if empty(l:syn.bg.hex)
        let l:syn.bg.hex = l:default
        let l:syn.bg.term = synIDattr(l:id, 'bg')
        if empty(l:syn.bg.term)
            let l:syn.bg.term = l:default
        endif
    else
        let l:syn.bg.term = l:default
    endif

    let l:syn.attr = ''
    if synIDattr(l:id, 'bold')
        let l:syn.attr += 'bold'
    endif
    " if l:syn.attr == ''
    if empty(l:syn.attr)
        let l:syn.attr = l:default
    endif

    let l:hi_string = 'hi! %s guifg=%s ctermfg=%s guibg=%s ctermbg=%s cterm=%s gui=%s'
    return printf(l:hi_string, l:syn.name, l:syn.fg.hex, l:syn.fg.term, l:syn.bg.hex, l:syn.bg.term, l:syn.attr, l:syn.attr)
endfunction

if(!exists('*s:ReloadColors'))
    function! s:ReloadColors()
        exe 'colorscheme '. g:colors_name
    endfunction
endif

let s:hi_stack = []

function! s:LinkSustainColor(syn_group, color, shade)
    " Original idea was to use hi! link, but after using link
    " SyntaxGroupAtCursor returns the link and as far as I can there is no way
    " to recover the syntax group before the link. Therefore we just perform a
    " regular highlight

    " Save the current highlight in the highlight stack to easily undo
    call insert(s:hi_stack, s:HiCommandAtCursor())

    " Turn DeepPurple into deep_purple, basically unformat color
    let l:color = tolower(substitute(a:color, '\u', '_\0', 'g'))[1:]
    let l:shade = empty(a:shade) ? 'medium' : s:shade[tolower(a:shade)]

    let l:command = 'HiFgCode %s, %s, %s'

    let l:syn_group = "'" . a:syn_group . "'"
    let l:color_str = 's:' . l:color
    let l:shade_str = 's:shade.' . l:shade
    let l:command = printf(l:command, l:syn_group, l:color_str, l:shade_str)
    exe l:command
    call insert(s:hi_stack, l:command, 0)
endfunction

function! s:PromptToSaveLastChange()
    if confirm('Save Last Color Change?', "&Yes\n&No", 1) == 1
        call s:SaveCustomColors(s:hi_stack[0])
    endif
endfunction

function! s:SaveCustomColors(command)
    " Test write to file
    if writefile([], s:custom_colors_file, 'a') == -1
        call s:ErrorMsg('Cannot save colors: writing to ' . s:custom_colors_file . ' failed!')
        return
    endif

    " TODO:
    " Does it make sense to delete old entries in this file? Or just keep
    " adding entries to the end of the file.
    " If this is really slow, convert file to dictionary and map syntax groups
    " to colors and shades, effectively eliminating duplicate entries, then
    " save. But this operation could be slow, and unnecessary?

    " Check if the command is the right format
    if s:IsSustainCommand(a:command)
        call writefile([a:command], s:custom_colors_file, 'a')
    endif
endfunction

function! s:IsSustainCommand(input)
    " TODO:
    " Make this much more robust
    return match(a:input, "Hi.* '.*', s:.*, s:shade.*") != -1
endfunction

function! s:SaveLastColorChange()
    if len(s:hi_stack) > 0
        call s:SaveCustomColors(s:hi_stack[0])
        echo 'Last color change saved!'
    else
        call s:ErrorMsg('No color changes to save')
    endif
endfunction

function! s:SaveAllColorChanges()
    if len(s:hi_stack) > 0
        " TODO: What order does this need to go in?
        for l:hi in s:hi_stack
            call s:SaveCustomColors(l:hi)
        endfor
        " Clear the stack
        let s:hi_stack = []
        echo 'All color changes saved!'
    else
        call s:ErrorMsg('No color changes to save')
    endif
endfunction

function! s:AskToSaveAllColorChanges()
    if len(s:hi_stack) > 0
        if confirm('Save All Color Change?', "&Yes\n&No", 1) == 1
            call s:SaveAllColorChanges()
        endif
    endif
endfunction

function! s:UndoCustomHighlight()
    " Remove the color from the stack
    if len(s:hi_stack) > 2
        call remove(s:hi_stack, 0)
        exe s:hi_stack[0]

        " Remove the command from the settings file
        let l:file = readfile(s:custom_colors_file)
        call writefile(l:file[0:-2], s:custom_colors_file)
    else
        call s:ErrorMsg('There are no colors to undo!')
    endif
endfunction

function! s:ShowCustomColors(show_numbers)
    let l:file = readfile(s:custom_colors_file)
    if len(l:file) < 1
        call s:ErrorMsg('No custom colors!')
        return
    endif

    let l:parsed_lines = []
    for l:line in l:file
        let l:l = {}
        let l:l.group = matchstr(l:line, "'.*'")[1:-2]
        let l:comma_split = split(copy(l:line), ',')
        let l:l.color = s:FormatColor(matchstr(l:comma_split[1], 's:.*')[2:])
        let l:l.shade = s:Capitalize(matchstr(l:comma_split[2], '\..*')[1:])
        call add(l:parsed_lines, l:l)
    endfor

    echo "Custom Colors:\n"
    let l:choice = 1
    " TODO:
    " Right now this supports foregrounds only. I need to come up with a
    " clever way to support backgrounds without linking num_of_colors^2.
    " Possibly link highlights just before they are needed
    for l:hi in l:parsed_lines
        let l:this_shade = l:hi.shade ==# 'Medium' ? '' : l:hi.shade
        let l:hi_color = 'SustainCode' . l:this_shade . l:hi.color
        let l:nl = l:choice == len(l:parsed_lines) ? '' : '\n'
        let l:choice_str = a:show_numbers ? 'echon ''.  l:choice . '. ' | ' : ''
        exe l:choice_str . 'echohl ' . l:hi_color . ' | echon "' . l:hi.group . l:nl . '" | echohl None'
        let l:choice += 1
    endfor
endfunction

function! s:ExecuteCustomColors()
    try
        let l:commands = readfile(s:custom_colors_file)
    catch /^Vim\%((\a\+)\)\=:E484/
        " Silence cant open file error, there is no custom colors file
        return
    endtry

    for l:command in l:commands
        " Verify the command about to be executed
        if s:IsSustainCommand(l:command)
            execute l:command
        endif
    endfor
endfunction

function! s:ChooseFromColors(message, colors)
    echo "Choose a Color:\n"

    for l:color in a:colors
        let l:hi_color = 'SustainCode' . l:color
        exe 'echohl ' . l:hi_color ' | echo "' . l:color . '\n'. '" | echohl None'
    endfor

    let l:result = input(a:message . ' ', '', 'customlist,ChooseFromColorsCompletion')

    if index(s:all_color_names_formatted, l:result) == -1
        call s:ErrorMsg("\nInvalid color choice!")
        return ''
    else
        return l:result
    endif
endfunction

function! ChooseFromColorsCompletion(ArgLead, not, used)
    return s:CompletionFromList(s:all_color_names_formatted, a:ArgLead)
endfunction

function! s:CompletionFromList(list, str)
    let l:result = []
    for l:element in a:list
        if match(l:element, a:str) != -1
            call add(l:result, l:element)
        endif
    endfor
    return l:result
endfunction

function! s:ChooseColor(syn_group)
    return s:ChooseFromColors("Choose color for group '" . a:syn_group . "':", s:all_color_names_formatted)
endfunction

function! s:ChooseShade(syn_group, color)

    echo "Shades:\n"

    for l:shade in s:all_shades_formatted
        if l:shade == s:Capitalize(s:shade.medium)
            let l:this_shade = ''
        else
            let l:this_shade = l:shade
        endif
        let l:hi_color = 'SustainCode' . l:this_shade . a:color
        exe 'echohl ' . l:hi_color . ' | echo "' . l:shade . '\n'. '" | echohl None'
    endfor

    let l:result = input('Choose shade for group ' . a:syn_group . ': ', '', 'customlist,ChooseFromShadesCompletion')

    if index(s:all_shades_formatted, l:result) == -1
        call s:ErrorMsg("\nInvalid shade choice!")
        return ''
    else
        return l:result
    endif

endfunction

function! ChooseFromShadesCompletion(ArgLead, not, used)
    return s:CompletionFromList(map(keys(s:shade), 's:Capitalize(v:val)'), a:ArgLead)
endfunction

function! s:CustomHighlightAtCursor()
    try
        call s:HiSustainLinkGroups(s:target.ui, s:all_colors)
        call s:HiSustainLinkGroups(s:target.code, s:all_colors)
        let l:syn_group = s:SyntaxGroupAtCursor()

        if empty(l:syn_group)
            let l:no_syn_group_err = 'No syntax group under cursor!'
            call s:ErrorMsg(l:no_syn_group_err)
            return
        endif

        let l:color = s:ChooseColor(l:syn_group)
        if empty(l:color)
            return
        endif

        exe 'redraw'

        let l:shade = s:ChooseShade(l:syn_group, l:color)
        if empty(l:shade)
            return
        endif

        if l:shade ==# 'Medium'
            let l:shade = ''
        endif
        call s:LinkSustainColor(l:syn_group, l:color, l:shade)
    finally
        call s:HiSustainUnlinkGroups(s:target.ui, s:all_colors)
        call s:HiSustainUnlinkGroups(s:target.code, s:all_colors)
    endtry
endfunction

function! s:IncrementColorAtCursor(forward)
    let l:syn_name = s:SyntaxGroupAtCursor()
    let l:syn_group = get(s:code_hi, l:syn_name)
    if empty(l:syn_group)
        call s:ErrorMsg('Cannot find syntax group to increment color!')
    else
        let l:color_index = index(s:all_color_names, l:syn_group.fgcolor)
        let l:shade_index = index(s:all_shades, l:syn_group.fgshade)

        if(a:forward)
            if (l:shade_index + 1 == len(s:all_shades))
                let l:next_color = l:color_index + 1
                if l:next_color == len(s:all_color_names)
                    let l:next_color = 0
                endif
                let l:next_shade = 0
            else
                let l:next_color = l:color_index
                let l:next_shade = l:shade_index + 1
            endif
        else
            if (l:shade_index - 1 < 0)
                let l:next_color = l:color_index - 1
                if(l:next_color < 0)
                    let l:next_color = len(s:all_color_names) - 1
                endif
                let l:next_shade = len(s:all_shades) - 1
            else
                let l:next_color = l:color_index
                let l:next_shade = l:shade_index - 1
            endif
        endif

        let l:command = 'HiFgCode "%s", %s, %s'
        let l:command = printf(l:command, l:syn_name, 's:' . s:all_color_names[l:next_color], 's:shade.' . s:all_shades[l:next_shade])
        if(s:all_shades[l:next_shade] == s:shade.medium)
            let l:shade_fmt = ''
        else
            let l:shade_fmt = s:all_shades_formatted[l:next_shade]
        end
        echo l:syn_name . ' -> ' . l:shade_fmt . s:all_color_names_formatted[l:next_color]

        " If the stack is empty add the original group at the cursor for undo
        if empty(s:hi_stack)
            call insert(s:hi_stack, s:HiCommandAtCursor())
        endif

        call insert(s:hi_stack, l:command, 0)
        exe l:command
    endif
endfunction

" End Utilities -------------------------------------------------------- }}}
" Code Syntax Coloring {{{

" Red ------------------------------------------------------------------ {{{

HiFgCode 'Error', s:red, s:shade.accent, "bold"

" End Red -------------------------------------------------------------- }}}
" Orange --------------------------------------------------------------- {{{


" '\n', true/false
HiFgCode ['Character', 'Boolean'], s:orange, s:shade.light

"Generic constant
HiFgCode 'Constant', s:orange, s:shade.light

" End Orange ----------------------------------------------------------- }}}
" Yellow --------------------------------------------------------------- {{{

" String constant "this is a string"
HiFgCode 'String', s:yellow, s:shade.light

" End Yellow ----------------------------------------------------------- }}}
" Green ---------------------------------------------------------------- {{{

" Function name
HiFgCode 'Function', s:green, s:shade.medium

" TODO This is the todo highlight
HiFgCode 'Todo', s:green, s:shade.accent, "bold"

" PreProcessor #if, #else, #endif, etc.
HiFgCode 'PreCondit', s:green, s:shade.accent

" End Green ------------------------------------------------------------ }}}
" Teal ----------------------------------------------------------------- {{{

" Generic type
HiFgCode 'Type', s:teal, s:shade.light

" struct, union, enum, etc.
HiFgCode 'Structure', s:teal, s:shade.light

" typedef
HiFgCode 'Typedef', s:teal, s:shade.light

" Variable name
HiFgCode 'Identifier', s:teal, s:shade.light


" End Teal ------------------------------------------------------------- }}}
" Cyan ----------------------------------------------------------------- {{{

" Concealed element: \lambda -> λ
HiFgCode 'Conceal', s:cyan, s:shade.accent

" sizeof, '+', etc.
HiFgCode 'Operator', s:cyan, s:shade.accent

" static, register, volatile, etc.
HiFgCode 'StorageClass', s:cyan, s:shade.medium

" What some syntaxes define as 'Special'
HiFgCode ['Special', 'SpecialChar', 'SpecialComment'], s:cyan, s:shade.dark

" End Cyan ------------------------------------------------------------- }}}
" Soft Blue ------------------------------------------------------------ {{{

" (if, then, else, endif, switch, etc.), (case, default), (try, catch)
HiFgCode ['Conditional', 'Label', 'Exception'], s:soft_blue, s:shade.light

" Generic preprocessor, #include, #define, same as #define
HiFgCode ['PreProc', 'Include', 'Define', 'Macro'], s:soft_blue, s:shade.light

" End Soft Blue -------------------------------------------------------- }}}
" Blue ---------------------------------------------------------------- {{{

" Generic statement (return, etc.), any other keyword
HiFgCode ['Statement', 'Keyword'], s:blue, s:shade.medium

" Number constant, float constant
HiFgCode ['Number', 'Float'], s:blue, s:shade.medium

" ?
HiFgCode ['Debug', 'Tag'], s:red, s:shade.medium

" Parentheses, brackets, etc.
HiFgCode 'Delimiter', s:blue, s:shade.dark

" End Blue ------------------------------------------------------------ }}}
" Indigo --------------------------------------------------------------- {{{

" This is a comment
HiFgCode 'Comment', s:indigo, s:shade.light

" End Indigo ----------------------------------------------------------- }}}
" Purple -------------------------------------------------------------- {{{

" Loops, for, do, while, etc.
HiFgCode 'Repeat', s:purple, s:shade.light

" End Purple ---------------------------------------------------------- }}}
" Grey ---------------------------------------------------------------- {{{

" Anything not in a syntax group ends up with this highlight
HiFgCode 'Normal', s:grey, s:shade.medium

" End Grey ------------------------------------------------------------ }}}

" }}}
" Vim Syntax Coloring {{{

" Background ----------------------------------------------------------- {{{

" Hack to get the background color to be affected by the ui brightness setting
" In neovim this avoids the dancing cursor on startup
" HiUi 'Normal', '', '', '', ''

" Use this for gui apps that require having a background set
" There is a bug here where this does not correctly apply the setting for
" code brightness and contrast
HiUi 'Normal', s:grey, s:shade.medium, s:bg, s:shade.dark

" End Background ------------------------------------------------------- }}}
" Cursor Related ------------------------------------------------------- {{{

" Clear other cursor highlighting
HiUi ['Cursor', 'CursorIM'], '', '', s:gui, s:shade.light

" Line and column where the cursor is located
HiUi ['CursorLine', 'CursorColumn'], '', '', s:bg, s:shade.medium

" Line number on cursor line, add bg if cursorline is enabled
if &cursorline ==# 'nocursorline'
    HiUi 'CursorLineNr', s:gui, s:shade.light, '', ''
else
    HiUi 'CursorLineNr', s:gui, s:shade.light, s:bg, s:shade.medium
endif

" End Cursor Related --------------------------------------------------- }}}
" Errors -------------------------------------------------------------- {{{

" Errors on the command line
HiUi 'ErrorMsg', s:grey, s:shade.light, s:red, s:shade.dark
HiUi 'WarningMsg', s:grey, s:shade.light, s:deep_orange, s:shade.dark

" End Errors ---------------------------------------------------------- }}}
" Folds ---------------------------------------------------------------- {{{

" Fold Text
HiUi 'Folded', s:gui, s:shade.light, s:bg, s:shade.medium

" End Folds ------------------------------------------------------------ }}}
" Gutter -------------------------------------------------------------- {{{

" Column where signs are displayed
" HiUi 'SignColumn', s:gui, s:shade.light, s:bg, s:shade.dark
HiUi 'SignColumn', s:grey, s:shade.light, s:bg, s:shade.dark

" Line Number for every line but the current line
HiUi 'LineNr', s:gui, s:shade.medium, s:bg, s:shade.dark

" Characters that indicate the fold level
HiUi 'FoldColumn', s:gui, s:shade.light, s:bg, s:shade.dark

" End Gutter ---------------------------------------------------------- }}}
" Messages ------------------------------------------------------------- {{{

" Showmode Message, '-- INSERT --'
HiFgUi 'ModeMsg', s:gui, s:shade.medium

" Message at the bottom when echo or the vim pager fills up the whole page
" with the scrolling instructions
" Message from confirm prompts
HiFgUi 'MoreMsg', s:gui, s:shade.light

" Mostly hit enter prompts on some events
HiFgUi 'Question', s:cyan, s:shade.light

" End Messages --------------------------------------------------------- }}}
" Misc Ui ------------------------------------------------------------- {{{

" Characters that do not exist in the text but are displayed to show line
" continuations, double wide characters, showbreak, the end of a buffer, etc.
HiFgUi 'NonText', s:bg, s:shade.dark

" No docs on this, but assumed it does what it says
HiUi 'Underline', '', '', '', '', 'underline'

" Vertical line between splits
HiUi 'VertSplit', s:gui, s:shade.dark, s:bg, s:shade.dark

" Matched Paren
HiFgUi 'MatchParen', s:purple, s:shade.accent

" Column @ textwidth if activated
HiUi 'ColorColumn', '', '', s:gui, s:shade.dark

" Not sure where these apply
HiFgUi ['Directory', 'SpecialKey', 'Title'], s:gui, s:shade.light

" End Misc Ui --------------------------------------------------------- }}}
" Popup Menu ----------------------------------------------------------- {{{

" Popup menu unselected
HiUi ['Pmenu'], s:gui, s:shade.light, s:bg, s:shade.light

" Popup menu scroll bar, thumb? of the scrollbar
HiUi ['PmenuSbar', 'PmenuThumb'], s:gui, s:shade.light, s:gui, s:shade.light

" Selected popup menu, wildmenu item
HiUi ['PmenuSel', 'WildMenu'], s:bg, s:shade.dark, s:gui, s:shade.light

" Current match in 'wildmenu' completion
HiUi ['PmenuSel'], s:bg, s:shade.medium, s:gui, s:shade.light

" End Popup Menu ------------------------------------------------------- }}}
" Search --------------------------------------------------------------- {{{

" Current and next search results
HiFgUi 'Search', s:pink, s:shade.dark
HiFgUi 'IncSearch', s:purple, s:shade.medium, 'underline'

" End Search ----------------------------------------------------------- }}}
" Spelling ------------------------------------------------------------ {{{

" I have no use for different misspelled words to be highlighted differently
HiFgUi ['SpellBad', 'SpellCap', 'SpellLocal', 'SpellRare'], s:red, s:shade.dark, "underline"

" End Spelling -------------------------------------------------------- }}}
" Status Line --------------------------------------------------------- {{{

" Also unselected wildmenu items
HiUi ['StatusLine'], s:gui, s:shade.light, s:bg, s:shade.light

" Inactive window status line
HiUi 'StatusLineNC', s:bg, s:shade.dark, s:grey, s:shade.medium

" End Status Line ----------------------------------------------------- }}}
" Term ---------------------------------------------------------------- {{{

" Neovim Term
HiUi 'TermCursor', s:grey, s:shade.light, s:gui, s:shade.medium

" Term Cursor inactive
HiUi 'TermCursorNC', s:gui, s:shade.medium, s:gui, s:shade.dark

" End Term ------------------------------------------------------------ }}}
" Tabs ---------------------------------------------------------------- {{{

" tab pages line, not active tab page label
HiUi 'Tabline', s:bg, s:shade.dark, s:gui, s:shade.medium

" tab pages line, where there are no labels
HiUi 'TablineFill', s:bg, s:shade.dark, s:gui, s:shade.dark

" tab pages line, active tab page label
HiUi 'TablineSel', s:bg, s:shade.dark, s:gui, s:shade.light

" End Tabs ------------------------------------------------------------ }}}
" Visual Mode --------------------------------------------------------- {{{

HiUi 'Visual', s:grey, s:shade.light, s:orange, s:shade.dark

" End Visual Mode ----------------------------------------------------- }}}

" }}}
" Diffs {{{

" * Dark Green (#001a00) for Additions and Changed Lines
" * Lighter Dark Green (#003300) for Changed Text
" * Dark Red (#220000) for Deletions with same color text to hide dashes

" Split diffs
call s:Hi('DiffAdd', 'NONE', 'NONE', '#001a00', '16', 'NONE')
call s:Hi('DiffChange', 'NONE', 'NONE', '#001a00', '16', 'NONE')
call s:Hi('DiffText', 'NONE', 'NONE', '#003300', '22', 'NONE')
call s:Hi('DiffDelete', '#220000', '16', '#220000', '16', 'NONE')

" Highlight `gitcommit` files like a patch
HiFgCode 'diffAdded', s:green, s:shade.light
HiFgCode 'diffRemoved', s:red, s:shade.dark

" }}}
" Custom Highlighting {{{

" Rainbow Parentheses -------------------------------------------------- {{{

function! s:GetRainbowColors(colors, shades, brightness, contrast)
    let l:result = []
    for l:shade in a:shades
        for l:color in a:colors
            let l:color = GetCustomHexAndTermColor(l:color, a:brightness, a:contrast)
            call add(l:result, [l:color.term[l:shade], l:color.hex[l:shade]])
        endfor
    endfor
    return l:result
endfunction

" Rainbow parens need specific brightness not tied to any other setting
let s:rainbow_brightness = 300
let s:rainbow_contrast = 0

let s:rainbow_colors = [
    \ s:blue,
    \ s:teal,
    \ s:purple,
    \ s:cyan,
    \ s:deep_purple,
    \ s:soft_blue,
    \ s:green,
\ ]

let s:rainbow_single = [
    \ s:deep_purple,
\ ]

let g:sustain#rainbow_parens = s:GetRainbowColors(s:rainbow_colors, [s:shade.accent, s:shade.accent], s:rainbow_brightness, s:rainbow_contrast)
let g:sustain#rainbow_single = s:GetRainbowColors(s:rainbow_single, [s:shade.accent, s:shade.accent], s:rainbow_brightness, s:rainbow_contrast)

" End Rainbow Parentheses ---------------------------------------------- }}}
" Airline Settings {{{

" Normal Mode
" Hues of Gui Blue
HiUi 'AirlineN1', s:bg, s:shade.dark, s:gui, s:shade.light
HiUi 'AirlineN2', s:bg, s:shade.dark, s:gui, s:shade.medium
HiUi ['AirlineN3', 'AirlineN3Modified'], s:bg, s:shade.dark, s:gui, s:shade.dark

function! AirlineRed(sec_num)
    HiUi 'AirlineN' . a:sec_num, s:grey, s:shade.light, s:red, s:shade.dark
    AirlineRefresh
endfunction

function! AirlineNotRed(sec_num)
    HiUi 'AirlineN' . a:sec_num, s:bg, s:shade.dark, s:gui, s:shade.medium
    AirlineRefresh
endfunction

HiUi 'AirlineRed' , s:grey, s:shade.light, s:red, s:shade.dark

" Tabline
" Hues of Gui Blue
HiUi ['AirlineTabBase', 'AirlineTabBg'], s:bg, s:shade.dark, s:gui, s:shade.dark
HiUi 'AirlineTabRightBox', s:bg, s:shade.dark, s:gui, s:shade.medium
HiUi 'AirlineTabSel', s:bg, s:shade.dark, s:gui, s:shade.light
HiUi 'AirlineTabUnSel', s:bg, s:shade.dark, s:gui, s:shade.medium
HiUi 'AirlineTabSelMod', s:bg, s:shade.dark, s:gui, s:shade.light
HiUi 'AirlineTabUnSelMod', s:bg, s:shade.dark, s:gui, s:shade.medium

" Insert Mode
" Hues of Gui Soft Blue
HiUi 'AirlineI1', s:bg, s:shade.dark, s:blue, s:shade.dark
HiUi 'AirlineI2', s:bg, s:shade.dark, s:blue, s:shade.medium
HiUi 'AirlineI3', s:bg, s:shade.dark, s:blue, s:shade.dark

" Visual Mode
" White on Orange
let s:airline_visual = ['AirlineV1', 'AirlineV2', 'AirlineV3']
HiUi s:airline_visual, s:grey, s:shade.light, s:orange, s:shade.dark

" Replace Mode
" White on Red
let s:airline_replace = ['AirlineR1', 'AirlineR2', 'AirlineR3']
HiUi s:airline_replace, s:grey, s:shade.light, s:red, s:shade.dark

" Inactive
" Lt Gray on Gray
let s:airline_inactive = ['AirlineIA1', 'AirlineIA2', 'AirlineIA3']
HiUi s:airline_inactive, s:bg, s:shade.dark, s:blue_grey, s:shade.dark

" Terminal
" Teals
HiUi 'AirlineTE1', s:grey, s:shade.light, s:teal, s:shade.dark
HiUi 'AirlineTE2', s:grey, s:shade.light, s:teal, s:shade.medium
HiUi 'AirlineTE3', s:grey, s:shade.light, s:teal, s:shade.dark

" Warnings and Errors
HiUi 'AirlineError', s:grey, s:shade.light, s:red, s:shade.dark
HiUi 'AirlineErrorInactive', s:grey, s:shade.dark, s:red, s:shade.dark
HiUi 'AirlineWarning', s:bg, s:shade.dark, s:deep_orange, s:shade.dark
HiUi 'AirlineWarningInactive', s:grey, s:shade.dark, s:deep_orange, s:shade.dark

" }}}

" coc.nvim --------------------------------------------------------------{{{

" Popup menu unselected
HiUi ['CocSearch'], s:gui, s:shade.light, s:bg, s:shade.light

" Selected popup menu item
HiUi ['CocMenuSel'], s:bg, s:shade.dark, s:gui, s:shade.light

" End coc.nvim ----------------------------------------------------------}}}
" C & C++ -------------------------------------------------------------- {{{

call s:HiFgCode('Emphasize', s:orange, s:shade.accent, 'bold')

" End C & C++ ---------------------------------------------------------- }}}
"vim-gitgutter ---------------------------------------------------------------- {{{

call s:HiFgCode('GitGutterAdd', s:green, s:shade.accent)
call s:HiFgCode('GitGutterChange', s:orange, s:shade.accent)
call s:HiFgCode('GitGutterDelete', s:red, s:shade.accent)

" End vim-gitgutter ------------------------------------------------------------ }}}
" Python{{{

call s:HiFgCode('pythonColon', s:pink, s:shade.medium, 'bold')

" }}}
" HTML {{{
let s:html_headers = ['htmlH1', 'H2', 'H3', 'H4', 'H5', 'H6', ]
let s:html_links = ['htmlLink']

call s:HiFgCode(s:html_headers, s:pink, s:shade.medium)
call s:HiFgCode(s:html_links, s:purple, s:shade.medium)

" }}}
" Org Mode {{{
" let s:org_headers = ['org_1_header', 'org_2_header', 'org_3_header', 'org_4_header', 'org_5_header']
" call s:HiGroup(s:org_headers, s:sustain_reverse_pinks)
" call s:HiGroup(['org_1_freeform_header'], s:GetShade(s:pinks, "normal", "underline"))
" let s:org_blue = ['org_time_1_header', 'org_time', 'org_1_done', 'org_done']
" call s:HiGroup(s:org_blue, s:GetShade(s:blues, "normal", "none"))
" let s:org_yellow = ['org_1_line', 'org_1_underway', 'org_underway']
" call s:HiGroup(s:org_yellow, s:GetShade(s:yellows, "accent", "bold"))
" let s:org_reds = ['org_1_todo', 'org_todo']
" call s:HiGroup(s:org_reds, s:GetShade(s:reds, "accent", "none"))
" }}}
" Neovim True Color -------------------------------------------------- {{{

" See terminal-emulator-configuration
if has('termguicolors')
    let g:terminal_foreground = GetHexColor(s:grey, s:shade.light)
    let g:terminal_background = GetHexColor(s:bg, s:shade.medium)
    " Blacks
    let [g:terminal_color_c, g:terminal_color_8] = ['#cccccc', '#cccccc']
    " Reds
    let [g:terminal_color_1, g:terminal_color_9] = [GetHexColor(s:red, s:shade.medium), GetHexColor(s:red, s:shade.accent)]
    " Greens
    let [g:terminal_color_2, g:terminal_color_10] = [GetHexColor(s:green, s:shade.medium), GetHexColor(s:green, s:shade.accent)]
    " Yellows
    let [g:terminal_color_3, g:terminal_color_11] = [GetHexColor(s:yellow, s:shade.medium), GetHexColor(s:yellow, s:shade.accent)]
    " Blues
    let [g:terminal_color_4, g:terminal_color_12] = [GetHexColor(s:blue, s:shade.medium), GetHexColor(s:blue, s:shade.accent)]
    " Pinks
    let [g:terminal_color_5, g:terminal_color_13] = [GetHexColor(s:pink, s:shade.medium), GetHexColor(s:pink, s:shade.accent)]
    " Cyans
    let [g:terminal_color_6, g:terminal_color_14] = [GetHexColor(s:cyan, s:shade.medium), GetHexColor(s:cyan, s:shade.accent)]
    " Whites
    let [g:terminal_color_7, g:terminal_color_15] = [GetHexColor(s:grey, s:shade.light), GetHexColor(s:orange, s:shade.light)]
endif

" }}}
" Sneak ---------------------------------------------------------------- {{{

" Matches for current sneak and f/t moves
" call s:HiFgCode('SneakPluginTarget', s:pink, s:shade.accent)
call s:HiFgCode('Sneak', s:pink, s:shade.accent)

" Matches for Multiple sneak results
" call s:HiFgCode('SneakPluginScope', s:pink, s:shade.accent)
call s:HiFgCode('SneakScope', s:pink, s:shade.accent)

" Character to move to
" call s:HiFgCode('SneakLabelTarget', s:purple, s:shade.accent, "underline")
call s:HiFgCode('SneakLabelTarget', s:purple, s:shade.accent, 'underline')

" Next character after sneak move char
call s:HiFgCode('SneakLabelMask', s:gui, s:shade.dark)

" End Sneak ------------------------------------------------------------ }}}
" You Complete Me Errors ----------------------------------------------- {{{

HiFgUi ['PluginError'], s:red, s:shade.dark, "underline"
HiFgUi ['PluginErrorSign'], s:red, s:shade.accent
HiFgUi ['PluginWarning'], s:orange, s:shade.dark, "underline"
HiFgUi ['PluginWarningSign'], s:orange, s:shade.dark

" Errors Have A Red Background
call s:Hi('YcmErrorSection', 'NONE', 'NONE', '#330000', '52', 'underline')
" call s:Hi('YcmErrorSign', '#ffffff', '255', '#330000', '52', 'NONE')
" call s:Hi('YcmErrorSign', '#330000', '255', 'NONE', 'NONE', 'NONE')
hi link YcmErrorSign PluginErrorSign

" Warnings Have A Purple Background
call s:Hi('YcmWarningSection', 'NONE', 'NONE', '#180033', '52', 'NONE')
" call s:Hi('YcmWarningSign', '#ffffff', '255', '#180033', '52', 'NONE')
hi link YcmWarningSign PluginWarningSign

" call s:HiGroup(['org_1_freeform_header'], s:GetShade(s:pinks, "normal", "underline"))

" End You Complete Me Errors ------------------------------------------- }}}
" Source User Set Colors ----------------------------------------------- {{{

call s:ExecuteCustomColors()

" End Source User Set Colors ------------------------------------------- }}}

" }}}
" External Maps and Commands ---------------------------------------------------- {{{

command! -bar SustainCustomHighlightAtCursor  :call <SID>CustomHighlightAtCursor()
command! -bar SustainNextColorAtCursor        :call <SID>IncrementColorAtCursor(1)
command! -bar SustainPrevColorAtCursor        :call <SID>IncrementColorAtCursor(0)
command! -bar SustainUndoCustomHighlight      :call <SID>UndoCustomHighlight()
command! -bar SustainSaveLastColorChange      :call <SID>SaveLastColorChange()
command! -bar SustainSaveAllColorChanges      :call <SID>SaveAllColorChanges()
command! -bar SustainAskToSaveAllColorChanges :call <SID>AskToSaveAllColorChanges()
command! -bar SustainShowCustomColors         :call <SID>ShowCustomColors(0)

if s:enable_maps
    " Open Maps, ch, cj, ck, cu, cx
    " Color Here
    nnoremap <silent> ch :SustainCustomHighlightAtCursor<CR>
    " Color Undo
    nnoremap <silent> cu :SustainUndoCustomHighlight<CR>

    if s:increment_colors
        nnoremap <silent> cj :SustainNextColorAtCursor<bar>call repeat#set("cj")<CR>
        nnoremap <silent> ck :SustainPrevColorAtCursor<bar>call repeat#set("ck")<CR>
    endif
endif

if s:ask_to_save
    augroup sustain_ask_to_save
        autocmd!
        au VimLeave * SustainAskToSaveAllColorChanges
    augroup END
endif


" End External Maps and Commands ------------------------------------------------ }}}
