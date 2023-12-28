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
	Special                       = { fg = palette.blue2 },
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
    ['@comment']                  = { link = 'Comment' },                        -- line and block comments
    ['@comment.documentation']    = { link = 'Comment' },                        -- comments documenting code
    ['@error']                    = { link = 'ErrorMsg' },                       -- syntax/parser errors
    ['@none']                     = { fg = palette.text },                       -- completely disable the highlight
    ['@preproc']                  = { link = 'PreProc' },                        -- various preprocessor directives & shebangs
    ['@define']                   = { link = 'Function' },                       -- preprocessor definition directives
    ['@operator']                 = { link = 'Operator' },                       -- symbolic operators (e.g. `+` / `*`)

    -- Punctuation
    ['@punctuation.delimiter']    = { fg = palette.blue1 },                      -- delimiters (e.g. `;` / `.` / `,`)
    ['@punctuation.bracket']      = { link = '@punctuation.delimiter' },         -- brackets (e.g. `()` / `{}` / `[]`)
    ['@punctuation.special']      = { link = '@punctuation.delimiter' },         -- special symbols (e.g. `{}` in string interpolation)

    -- Literals
    ['@string']                   = { link = 'String' },                         -- string literals
--  ['@string.documentation']     = ''                                           -- string documenting code (e.g. Python docstrings)
    ['@string.regex']             = { fg = palette.yellow2 },                    -- regular expressions
    ['@string.escape']            = { link = '@punctuation.delimiter' },         -- escape sequences
    ['@string.special']           = { link = 'Special' },                        -- other special strings (e.g. dates)

    ['@character']                = { link = 'String' },                         -- character literals
    ['@character.special']        = { link = 'Special' },                        -- special characters (e.g. wildcards)

    ['@boolean']                  = { link = 'Boolean' },                        -- boolean literals
    ['@number']                   = { link = 'Number' },                         -- numeric literals
    ['@float']                    = { link = 'Float' },                          -- floating-point number literals

    -- Functions
    ['@function']                 = { link = 'Function' },                       -- function definitions
    ['@function.builtin']         = { link = 'Function' },                       -- built-in functions
    ['@function.call']            = { link = 'Function' },                       -- function calls
    ['@function.macro']           = { link = 'PreProc' },                        -- preprocessor macros

    ['@method']                   = { link = 'Function' },                       -- method definitions
    ['@method.call']              = { link = 'Function' },                       -- method calls

    ['@constructor']              = { link = 'Function' },                       -- constructor calls and definitions
    ['@parameter']                = { fg = palette.text, bold = true },          -- parameters of a function

    -- Keywords
    ['@keyword']                  = { link = 'Conditional' },                    -- various keywords
    ['@keyword.coroutine']        = { link = '@keyword' },                       -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ['@keyword.function']         = { link = '@keyword' },                       -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ['@keyword.operator']         = { link = 'Operator' },                       -- operators that are English words (e.g. `and` / `or`)
    ['@keyword.return']           = { link = '@keyword' },                       -- keywords like `return` and `yield`

    ['@conditional']              = { link = '@keyword' },                       -- keywords related to conditionals (e.g. `if` / `else`)
    ['@conditional.ternary']      = { link = 'Operator' },                       -- ternary operator (e.g. `?` / `:`)

    ['@repeat']                   = { link = '@keyword' },                       -- keywords related to loops (e.g. `for` / `while`)
--  ['@debug']                    =                                              -- keywords related to debugging
    ['@label']                    = { link = '@keyword' },                       -- GOTO and other labels (e.g. `label:` in C)
    ['@include']                  = { link = '@keyword' },                       -- keywords for including modules (e.g. `import` / `from` in Python)
    ['@exception']                = { link = '@keyword' },                       -- keywords related to exceptions (e.g. `throw` / `catch`)

    -- Types
    ['@type']                     = { link = 'Type' },                           -- type or class definitions and annotations
    ['@type.builtin']             = { link = 'Type' },                           -- built-in types
    ['@type.definition']          = { link = 'Type' },                           -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    ['@type.qualifier']           = { fg = palette.blue1 },                      -- type qualifiers (e.g. `const`)

    ['@storageclass']             = { link = '@keyword' },                       -- modifiers that affect storage in memory or life-time
    ['@attribute']                = { link = '@keyword' },                       -- attribute annotations (e.g. Python decorators)
    ['@field']                    = { link = '@parameter' },                     -- object and struct fields
    ['@property']                 = { link = '@parameter' },                     -- similar to `['@field`']= '',       

    -- Identifiers

    ['@variable']                 = { link = 'Identifier' },                     -- various variable names
    ['@variable.builtin']         = { link = 'Constant' },                       -- built-in variable names (e.g. `this`)

    ['@constant']                 = { link = 'Constant' },                       -- constant identifiers
    ['@constant.builtin']         = { link = 'Constant' },                       -- built-in constant values
    ['@constant.macro']           = { link = 'Constant' },                       -- constants defined by the preprocessor

    ['@namespace']                = { fg = palette.gandalf, bold = true },       -- modules or namespaces
    ['@symbol']                   = { link = 'Constant' },                       -- symbols or atoms

    -- Text

    ['@text']                     = { link = 'Identifier' },                     -- non-structured text
    ['@text.strong']              = { bold = true },                             -- bold text
    ['@text.emphasis']            = { italic = true },                           -- text with emphasis
    ['@text.underline']           = { link = 'Underlined' },                     -- underlined text
    ['@text.strike']              = { strikethrough = true },                    -- strikethrough text
    ['@text.title']               = { link = 'Title' },                          -- text that is part of a title
    ['@text.quote']               = { link = 'Identifier' },                     -- text quotations
    ['@text.uri']                 = { fg = palette.blue1, underline = true },    -- URIs (e.g. hyperlinks)
    ['@text.math']                = { fg = palette.blue1 },                      -- math environments (e.g. `$ ... $` in LaTeX)
    ['@text.environment']         = { fg = palette.blue1 },                      -- text environments of markup languages
    ['@text.environment.name']    = { link = '@keyword' },                       -- text indicating the type of an environment
--  ['@text.reference']           =                                              -- text references, footnotes, citations, etc.
--  ['@text.literal']             =                                              -- literal or verbatim text (e.g., inline code)
--  ['@text.literal.block']       =                                              -- literal or verbatim text as a stand-alone block
    ['@text.todo']                = { link = 'Todo' },                           -- todo notes
    ['@text.note']                = { fg = palette.blue1 },                      -- info notes
    ['@text.warning']             = { link = 'WarningMsg' },                     -- warning notes
    ['@text.danger']              = { link = 'ErrorMsg' },                       -- danger/error notes
    ['@text.diff.add']            = { link = 'GitSignsAdd' },                    -- added text (for diff files)
    ['@text.diff.delete']         = { link = 'GitSignsDelete' },                 -- deleted text (for diff files)

    -- Tags

--  ['@tag']                      = { link = '' },                               -- XML tag names
--  ['@tag.attribute']            = { link = '' },                               -- XML tag attributes
--  ['@tag.delimiter']            = { link = '' },                               -- XML tag delimiters

    -----------------
    -- LSP support --
    -----------------

    ['@lsp.type.boolean']                        = { link = '@boolean' },
    ['@lsp.type.builtinType']                    = { link = '@type.builtin' },
    ['@lsp.type.comment']                        = { link = '@comment' },
    ['@lsp.type.enum']                           = { link = '@type' },
    ['@lsp.type.enumMember']                     = { link = '@constant' },
    ['@lsp.type.escapeSequence']                 = { link = '@string.escape' },
    ['@lsp.type.formatSpecifier']                = { link = '@punctuation.delimiter' },
    ['@lsp.type.interface']                      = { link = '@type' },
    ['@lsp.type.keyword']                        = { link = '@keyword' },
    ['@lsp.type.namespace']                      = { link = '@namespace' },
    ['@lsp.type.number']                         = { link = '@number' },
    ['@lsp.type.operator']                       = { link = '@operator' },
    ['@lsp.type.parameter']                      = { link = '@parameter' },
    ['@lsp.type.property']                       = { link = '@property' },
    ['@lsp.type.selfKeyword']                    = { link = '@variable.builtin' },
    ['@lsp.type.typeAlias']                      = { link = '@type.definition' },
    ['@lsp.type.unresolvedReference']            = { link = '@error' },
    ['@lsp.type.variable']                       = {}, -- use treesitter styles for regular variables
    ['@lsp.typemod.class.defaultLibrary']        = { link = '@type.builtin' },
    ['@lsp.typemod.enum.defaultLibrary']         = { link = '@type.builtin' },
    ['@lsp.typemod.enumMember.defaultLibrary']   = { link = '@constant.builtin' },
    ['@lsp.typemod.function.defaultLibrary']     = { link = '@function.builtin' },
    ['@lsp.typemod.keyword.async']               = { link = '@keyword.coroutine' },
    ['@lsp.typemod.macro.defaultLibrary']        = { link = '@function.macro' },
    ['@lsp.typemod.method.defaultLibrary']       = { link = '@function.builtin' },
    ['@lsp.typemod.operator.injected']           = { link = '@operator' },
    ['@lsp.typemod.string.injected']             = { link = '@string' },
    ['@lsp.typemod.type.defaultLibrary']         = { link = '@type.builtin' },
    ['@lsp.typemod.variable.defaultLibrary']     = { link = '@variable.builtin' },
    ['@lsp.typemod.variable.injected']           = { link = '@variable' },

}) do
	vim.api.nvim_set_hl(0, group, attributes)
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
