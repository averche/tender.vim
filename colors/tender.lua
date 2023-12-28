vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "tender"

local palette = require("tender.palettes.tender")

-- stylua: ignore
for group, attributes in pairs({
	ColorColumn                   = { bg = palette.shadow },
	CursorColumn                  = { bg = palette.shadow },
	CursorLine                    = { bg = palette.shadow },
	CursorLineNr                  = { fg = palette.blue2 },
	Directory                     = { fg = palette.blue1 },
	DiffAdd                       = { bg = palette.green4 },
	DiffChange                    = { bg = palette.blue4 },
	DiffDelete                    = { fg = palette.red1, bg = palette.red3 },
	DiffText                      = { reverse = true },
	ErrorMsg                      = { fg = palette.red1, reverse = true },
	VertSplit                     = { fg = palette.bg, bg = palette.bg },
	Folded                        = { fg = palette.grey2, bg = palette.dark },
	FoldColumn                    = { fg = palette.grey2, bg = palette.dark },
	SignColumn                    = { fg = palette.grey1, bg = palette.bg },
	IncSearch                     = { fg = palette.highlighted, bg = palette.darkest, bold = true, reverse = true },
	LineNr                        = { fg = palette.grey3 },
	MatchParen                    = { fg = palette.red1, bold = true },
	NonText                       = { fg = palette.grey3 },
	Normal                        = { fg = palette.text, bg = palette.bg },
	PMenu                         = { fg = palette.pearl, bg = palette.blue4 },
	PMenuSel                      = { fg = palette.blue4, bg = palette.green1 },
	PmenuSbar                     = { fg = palette.blue4, bg = palette.blue4 },
	PmenuThumb                    = { fg = palette.green1, bg = palette.green1 },
	Question                      = { fg = palette.green1 },
	Search                        = { fg = palette.highlighted, underline = true, bold = true },
	SpecialKey                    = { fg = palette.grey3 },
	SpellBad                      = { fg = palette.red1 },
	SpellLocal                    = { fg = palette.yellow1 },
	SpellCap                      = { fg = palette.yellow2 },
	SpellRare                     = { fg = palette.blue2 },
	StatusLine                    = { fg = palette.darker, bg = palette.grey2, bold = true },
	StatusLineNC                  = { fg = palette.grey1, bg = palette.grey3 },
	TabLine                       = { fg = palette.grey1, bg = palette.grey3 },
	TabLineFill                   = { bg = palette.grey3 },
	TabLineSel                    = { fg = palette.green1, bold = true },
	Title                         = { fg = palette.blue1, bold = true },
	Visual                        = { bg = palette.blue5, bold = true },
	VisualNOS                     = { bg = palette.blue5, bold = true },
	WarningMsg                    = { fg = palette.red1 },
	WildMenu                      = { fg = palette.bg, bg = palette.green1, bold = true },
	Comment                       = { fg = palette.grey2 },
	Constant                      = { fg = palette.yellow2 },
	String                        = { fg = palette.yellow1 },
	Character                     = { fg = palette.yellow2 },
	Boolean                       = { fg = palette.yellow2, italic = true },
	Number                        = { fg = palette.yellow2 },
	Float                         = { fg = palette.yellow2 },
	Identifier                    = { fg = palette.text },
	Function                      = { fg = palette.blue1 },
	Statement                     = { fg = palette.blue1 },
	Conditional                   = { fg = palette.green1 },
	Operator                      = { fg = palette.red1 },
	Exception                     = { fg = palette.red1 },
	PreProc                       = { fg = palette.green1 },
	Type                          = { fg = palette.blue2 },
	Special                       = { fg = palette.red2 },
	Underlined                    = { underline = true },
	Error                         = { fg = palette.text, bg = palette.red1 },
	Todo                          = { fg = palette.red1, bold = true },
	CocErrorSign                  = { fg = palette.red1 },
	CocWarningSign                = { fg = palette.yellow1 },
	CocHintSign                   = { fg = palette.blue2 },
	CocInfoSign                   = { fg = palette.yellow2 },
	cssVendor                     = { fg = palette.green2 },
	cssTagName                    = { fg = palette.green2 },
	cssAttrComma                  = { fg = palette.text },
	cssBackgroundProp             = { fg = palette.blue1 },
	cssBorderProp                 = { fg = palette.blue1 },
	cssBoxProp                    = { fg = palette.blue2 },
	cssDimensionProp              = { fg = palette.blue2 },
	cssFontProp                   = { fg = palette.blue1 },
	cssPositioningProp            = { fg = palette.blue2 },
	cssTextProp                   = { fg = palette.blue1 },
	cssValueLength                = { fg = palette.text },
	cssValueInteger               = { fg = palette.text },
	cssValueNumber                = { fg = palette.text },
	cssIdentifier                 = { fg = palette.green2 },
	cssIncludeKeyword             = { fg = palette.yellow2 },
	cssImportant                  = { fg = palette.red1 },
	cssClassName                  = { fg = palette.green1 },
	cssClassNameDot               = { fg = palette.text },
	cssProp                       = { fg = palette.blue1 },
	cssAttr                       = { fg = palette.text },
	cssUnitDecorators             = { fg = palette.text },
	cssNoise                      = { fg = palette.red1 },
	diffRemoved                   = { fg = palette.red1 },
	diffChanged                   = { fg = palette.blue1 },
	diffAdded                     = { fg = palette.green1 },
	diffSubname                   = { fg = palette.green2 },
	elmDelimiter                  = { fg = palette.text },
	elmOperator                   = { fg = palette.red1 },
	FugitiveblameHash             = { fg = palette.blue1 },
	FugitiveblameUncommitted      = { fg = palette.red1 },
	FugitiveblameTime             = { fg = palette.green1 },
	FugitiveblameNotCommittedYet  = { fg = palette.yellow2 },
	gitcommitBranch               = { fg = palette.blue2 },
	gitcommitDiscardedType        = { fg = palette.red2 },
	gitcommitSelectedType         = { fg = palette.green2 },
	gitcommitHeader               = { fg = palette.blue1 },
	gitcommitUntrackedFile        = { fg = palette.yellow2 },
	gitcommitDiscardedFile        = { fg = palette.red1 },
	gitcommitSelectedFile         = { fg = palette.green1 },
	helpHyperTextEntry            = { fg = palette.green1 },
	helpHeadline                  = { fg = palette.blue2 },
	helpSectionDelim              = { fg = palette.grey2 },
	helpNote                      = { fg = palette.red1 },
	javaScriptOperator            = { fg = palette.green1 },
	javaScriptBraces              = { fg = palette.blue1 },
	javaScriptNull                = { fg = palette.yellow2 },
	jsonEscape                    = { fg = palette.blue2 },
	jsonNumber                    = { fg = palette.yellow2 },
	jsonBraces                    = { fg = palette.text },
	jsonNull                      = { fg = palette.yellow2 },
	jsonBoolean                   = { fg = palette.yellow2 },
	jsonKeywordMatch              = { fg = palette.red1 },
	jsonQuote                     = { fg = palette.text },
	jsonNoise                     = { fg = palette.red1 },
	markdownH1                    = { fg = palette.blue1, bold = true },
	markdownHeadingRule           = { fg = palette.red1, bold = true },
	markdownHeadingDelimiter      = { fg = palette.red1, bold = true },
	markdownListMarker            = { fg = palette.yellow2 },
	markdownBlockquote            = { fg = palette.yellow2 },
	markdownRule                  = { fg = palette.green1 },
	markdownLinkText              = { fg = palette.green1 },
	markdownLinkTextDelimiter     = { fg = palette.blue1 },
	markdownLinkDelimiter         = { fg = palette.blue1 },
	markdownIdDeclaration         = { fg = palette.green2 },
	markdownAutomaticLink         = { fg = palette.blue2 },
	markdownUrl                   = { fg = palette.blue2 },
	markdownUrlTitle              = { fg = palette.yellow1 },
	markdownUrlDelimiter          = { fg = palette.yellow2 },
	markdownUrlTitleDelimiter     = { fg = palette.yellow3 },
	markdownCodeDelimiter         = { fg = palette.blue2 },
	markdownCode                  = { fg = palette.yellow1 },
	markdownEscape                = { fg = palette.blue2 },
	markdownError                 = { fg = palette.red1 },
	NERDTreeHelp                  = { fg = palette.text },
	NERDTreeHelpKey               = { fg = palette.green1 },
	NERDTreeHelpCommand           = { fg = palette.yellow2 },
	NERDTreeHelpTitle             = { fg = palette.blue1 },
	NERDTreeUp                    = { fg = palette.green1 },
	NERDTreeCWD                   = { fg = palette.blue2 },
	NERDTreeOpenable              = { fg = palette.red1 },
	NERDTreeClosable              = { fg = palette.yellow2 },
	pugJavascriptOutputChar       = { fg = palette.yellow2 },
	typescriptParens              = { fg = palette.blue1 },
	typescriptLogicSymbols        = { fg = palette.red1 },
	typescriptReserved            = { fg = palette.blue2 },
	typescriptLabel               = { fg = palette.green1 },
	typescriptFuncName            = { fg = palette.green1 },
	typescriptCall                = { fg = palette.yellow2 },
	typescriptVariable            = { fg = palette.blue2 },
	typescriptBinaryOp            = { fg = palette.red1 },
	typescriptAssign              = { fg = palette.red1 },
	typescriptObjectLabel         = { fg = palette.blue1 },
	typescriptDotNotation         = { fg = palette.red1 },
	typescriptOperator            = { fg = palette.red1 },
	typescriptTernaryOp           = { fg = palette.red1 },
	typescriptTypeAnnotation      = { fg = palette.red1 },
	typescriptIdentifierName      = { fg = palette.text },
	typescriptArrowFuncArg        = { fg = palette.yellow2 },
	typescriptParamImpl           = { fg = palette.yellow2 },
	typescriptRepeat              = { fg = palette.green1 },
	typescriptStatementKeyword    = { fg = palette.blue2 },
	typescriptAliasKeyword        = { fg = palette.green1 },
	typescriptInterfaceKeyword    = { fg = palette.green1 },
	typescriptTemplateSB          = { fg = palette.red1 },
	typescriptMemberOptionality   = { fg = palette.yellow2 },
	typescriptOptionalMark        = { fg = palette.yellow2 },
	typescriptUnaryOp             = { fg = palette.red1 },
	GitGutterAdd                  = { fg = palette.green1 },
	GitGutterChange               = { fg = palette.blue1 },
	GitGutterDelete               = { fg = palette.red1 },
	GitGutterChangeDelete         = { fg = palette.red1 },
	javaScriptOpSymbols           = { fg = palette.red1 },
	javaScriptParens              = { fg = palette.blue1 },
	javaScriptDocTags             = { fg = palette.green3 },
	javaScriptDocSeeTag           = { fg = palette.blue3 },
	javaScriptBrowserObjects      = { fg = palette.blue2 },
	javaScriptDOMObjects          = { fg = palette.blue2 },
	javaScriptFuncArg             = { fg = palette.yellow2 },
	jsParensIfElse                = { fg = palette.blue1 },
	jsObjectKey                   = { fg = palette.blue1 },
	jsRepeat                      = { fg = palette.green1 },
	jsArrowFunction               = { fg = palette.green2 },
	jsFunctionKey                 = { fg = palette.green1 },
	jsFuncName                    = { fg = palette.green1 },
	jsObjectFuncName              = { fg = palette.green1 },
	jsNull                        = { fg = palette.yellow2 },
	jsObjectColon                 = { fg = palette.red1 },
	jsParens                      = { fg = palette.blue1 },
	jsFuncParens                  = { fg = palette.blue1 },
	jsFuncArgs                    = { fg = palette.yellow2 },
	jsSpecial                     = { fg = palette.yellow2 },
	jsTemplateBraces              = { fg = palette.red1 },
	jsGlobalObjects               = { fg = palette.blue2 },
	jsGlobalNodeObjects           = { fg = palette.blue1 },
	jsImport                      = { fg = palette.blue2 },
	jsExport                      = { fg = palette.blue2 },
	jsExportDefault               = { fg = palette.green1 },
	jsExportDefaultGroup          = { fg = palette.blue2 },
	jsFrom                        = { fg = palette.blue2 },
	plug2                         = { fg = palette.green1 },
	plugH2                        = { fg = palette.blue2, bold = true },
	plugBracket                   = { fg = palette.blue1 },
	plugNumber                    = { fg = palette.yellow2 },
	plugDash                      = { fg = palette.yellow2 },
	plugStar                      = { fg = palette.yellow1 },
	plugMessage                   = { fg = palette.yellow2 },
	plugName                      = { fg = palette.blue1 },
	plugUpdate                    = { fg = palette.red1 },
	plugEdge                      = { fg = palette.green1 },
	plugSha                       = { fg = palette.yellow1 },
	plugNotLoaded                 = { fg = palette.red3 },
	stylusVariable                = { fg = palette.text },
	stylusClass                   = { fg = palette.green1 },
	stylusClassChar               = { fg = palette.blue1 },
	stylusId                      = { fg = palette.green1 },
	stylusIdChar                  = { fg = palette.blue1 },
	cssVisualVal                  = { fg = palette.text },
	stylusImport                  = { fg = palette.yellow2 },
	vimCommentString              = { fg = palette.yellow3 },
	vimCommentTitle               = { fg = palette.blue3 },
	vimError                      = { fg = palette.text, bg = palette.red1 },
	xmlNamespace                  = { fg = palette.yellow2 },
	xmlAttribPunct                = { fg = palette.red1 },
	xmlProcessingDelim            = { fg = palette.red1 },
	javascriptOpSymbol            = { fg = palette.red1 },
	javascriptDocNotation         = { fg = palette.green3 },
	javascriptDocNamedParamType   = { fg = palette.blue3 },
	javascriptDocParamName        = { fg = palette.yellow3 },
	javascriptDocParamType        = { fg = palette.blue3 },
	javascriptTemplateSB          = { fg = palette.red1 },
	javascriptRepeat              = { fg = palette.green1 },
	javascriptObjectLabelColon    = { fg = palette.red1 },
	javascriptObjectMethodName    = { fg = palette.green1 },
	javascriptFuncName            = { fg = palette.green1 },
	yamlFlowString                = { fg = palette.yellow1 },
	yamlFlowStringDelimiter       = { fg = palette.text },
	yamlKeyValueDelimiter         = { fg = palette.red1 },

    ----------------------
    -- gitsigns support --
    ----------------------

    -- https://github.com/lewis6991/gitsigns.nvim/blob/main/doc/gitsigns.txt
	GitSignsAdd                   = { fg = palette.green1 },
	GitSignsChange                = { fg = palette.blue1 },
	GitSignsDelete                = { fg = palette.red1 },
	GitSignsChangeDelete          = { fg = palette.red1 },
    GitSignsCurrentLineBlame      = { fg = palette.blue1 },

    -----------------------------
    -- nvim-treesitter support --
    -- --------------------------

    -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#parser-configurations

    -- Misc
    ['@comment']                  = 'Comment',                              -- line and block comments
    ['@comment.documentation']    = 'Comment',                              -- comments documenting code
    ['@error']                    = 'ErrorMsg',                             -- syntax/parser errors
    ['@none']                     = { fg = palette.text },                  -- completely disable the highlight
    ['@preproc']                  = 'PreProc',                              -- various preprocessor directives & shebangs
    ['@define']                   = 'Function',                             -- preprocessor definition directives
    ['@operator']                 = 'Operator',                             -- symbolic operators (e.g. `+` / `*`)

    -- Punctuation
    ['@punctuation.delimiter']    = { fg = palette.blue1 },                 -- delimiters (e.g. `          --` / `.` / `,`)
    ['@punctuation.bracket']      = { fg = palette.blue1 },                 -- brackets (e.g. `()` / `{}` / `[]`)
    ['@punctuation.special']      = { fg = palette.blue1 },                 -- special symbols (e.g. `{}` in string interpolation)

    -- Literals
    ['@string']                   = 'String',                               -- string literals
--  ['@string.documentation']     = ''                                      -- string documenting code (e.g. Python docstrings)
    ['@string.regex']             = { fg = palette.yellow2 },               -- regular expressions
    ['@string.escape']            = { fg = palette.blue2 },                 -- escape sequences
    ['@string.special']           = 'Special',                              -- other special strings (e.g. dates)

    ['@character']                = 'String',                               -- character literals
    ['@character.special']        = 'Special',                              -- special characters (e.g. wildcards)

    ['@boolean']                  = 'Boolean',                              -- boolean literals
    ['@number']                   = 'Number',                               -- numeric literals
    ['@float']                    = 'Float',                                -- floating-point number literals

    -- Functions
    ['@function']                 = 'Function',                             -- function definitions
    ['@function.builtin']         = 'Function',                             -- built-in functions
    ['@function.call']            = 'Function',                             -- function calls
    ['@function.macro']           = 'PreProc',                              -- preprocessor macros

    ['@method']                   = 'Function',                             -- method definitions
    ['@method.call']              = 'Function',                             -- method calls

    ['@constructor']              = 'Function',                             -- constructor calls and definitions
    ['@parameter']                = { fg = palette.text, bold = true },     -- parameters of a function

    -- Keywords
    ['@keyword']                  = 'Conditional',                          -- various keywords
    ['@keyword.coroutine']        = 'Conditional',                          -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ['@keyword.function']         = 'Conditional',                          -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ['@keyword.operator']         = 'Operator',                             -- operators that are English words (e.g. `and` / `or`)
    ['@keyword.return']           = 'Conditional',                          -- keywords like `return` and `yield`

    ['@conditional']              = 'Conditional',                          -- keywords related to conditionals (e.g. `if` / `else`)
    ['@conditional.ternary']      = 'Operator',                             -- ternary operator (e.g. `?` / `:`)

    ['@repeat']                   = 'Conditional',                          -- keywords related to loops (e.g. `for` / `while`)
--  ['@debug']                    =                                         -- keywords related to debugging
    ['@label']                    = 'Conditional',                          -- GOTO and other labels (e.g. `label:` in C)
    ['@include']                  = 'Conditional',                          -- keywords for including modules (e.g. `import` / `from` in Python)
    ['@exception']                = 'Conditional',                          -- keywords related to exceptions (e.g. `throw` / `catch`)

    -- Types
    ['@type']                     = 'Type',                                 -- type or class definitions and annotations
    ['@type.builtin']             = 'Type',                                 -- built-in types
    ['@type.definition']          = 'Type',                                 -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    ['@type.qualifier']           = { fg = palette.blue1 },                 -- type qualifiers (e.g. `const`)

    ['@storageclass']             = 'Conditional',                          -- modifiers that affect storage in memory or life-time
    ['@attribute']                = 'Conditional',                          -- attribute annotations (e.g. Python decorators)
    ['@field']                    = 'Type',                                 -- object and struct fields
    ['@property']                 = 'Type',                                 -- similar to `['@field`']= '',       

    -- Identifiers

    ['@variable']                 = 'Identifier',                           -- various variable names
    ['@variable.builtin']         = 'Conditional',                          -- built-in variable names (e.g. `this`)

    ['@constant']                 = 'Identifier',                           -- constant identifiers
    ['@constant.builtin']         = 'Identifier',                           -- built-in constant values
    ['@constant.macro']           = { fg = palette.blue1 },                 -- constants defined by the preprocessor

    ['@namespace']                = 'Conditional',                          -- modules or namespaces
    ['@symbol']                   = 'Conditional',                          -- symbols or atoms

    -- Text

    ['@text']                     = 'Identifier',                                -- non-structured text
    ['@text.strong']              = { fg = palette.text, bold = true },          -- bold text
    ['@text.emphasis']            = { fg = palette.text, italic = true },        -- text with emphasis
    ['@text.underline']           = { fg = palette.text, underline = true },     -- underlined text
    ['@text.strike']              = { fg = palette.text, strikethrough = true }, -- strikethrough text
    ['@text.title']               = 'Title',                                     -- text that is part of a title
    ['@text.quote']               = 'Identifier',                                -- text quotations
    ['@text.uri']                 = { fg = palette.blue1, underline = true },    -- URIs (e.g. hyperlinks)
    ['@text.math']                = { fg = palette.blue1 },                      -- math environments (e.g. `$ ... $` in LaTeX)
    ['@text.environment']         = { fg = palette.blue1 },                      -- text environments of markup languages
    ['@text.environment.name']    = 'Conditional',                               -- text indicating the type of an environment
--  ['@text.reference']           =                                              -- text references, footnotes, citations, etc.
--  ['@text.literal']             =                                              -- literal or verbatim text (e.g., inline code)
--  ['@text.literal.block']       =                                              -- literal or verbatim text as a stand-alone block
    ['@text.todo']                = 'Todo',                                      -- todo notes
    ['@text.note']                = { fg = palette.blue1 },                      -- info notes
    ['@text.warning']             = 'WarningMsg',                                -- warning notes
    ['@text.danger']              = 'ErrorMsg',                                  -- danger/error notes
    ['@text.diff.add']            = 'GitSignsAdd',                               -- added text (for diff files)
    ['@text.diff.delete']         = 'GitSignsDelete',                            -- deleted text (for diff files)

    -- Tags

--  ['@tag']                      = '',       -- XML tag names
--  ['@tag.attribute']            = '',       -- XML tag attributes
--  ['@tag.delimiter']            = '',       -- XML tag delimiters
}) do
	if type(attributes) == "table" then
		vim.api.nvim_set_hl(0, group, attributes)
	else
		vim.api.nvim_set_hl(0, group, { link = attributes })
	end
end

vim.g.terminal_color_foreground = palette.bg
vim.g.terminal_color_background = palette.text
vim.g.terminal_color_0 = palette.bg
vim.g.terminal_color_1 = palette.red1
vim.g.terminal_color_2 = palette.green1
vim.g.terminal_color_3 = palette.yellow2
vim.g.terminal_color_4 = palette.blue1
vim.g.terminal_color_5 = palette.yellow1
vim.g.terminal_color_6 = palette.blue2
vim.g.terminal_color_7 = palette.text
vim.g.terminal_color_8 = palette.darker
vim.g.terminal_color_9 = palette.red1
vim.g.terminal_color_10 = palette.green1
vim.g.terminal_color_11 = palette.yellow2
vim.g.terminal_color_12 = palette.blue1
vim.g.terminal_color_13 = palette.yellow1
vim.g.terminal_color_14 = palette.blue2
vim.g.terminal_color_15 = palette.highlighted
