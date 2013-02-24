" Vim syntax file
" Language:	NesC
" Maintainer:	Lau Ming Leong <http://aming.no-ip.com>
" Version:	1.0
" Last Change:	2007 Apr 01
" Description:	Modified from syntax/cpp.vim by Ken Shan <ccshan@post.harvard.edu>

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Read the C syntax to start with
if version < 600
	so <sfile>:p:h/c.vim
else
	runtime! syntax/c.vim
	unlet b:current_syntax
endif

"Nesc extensions
syn keyword ncType		nx_struct
syn keyword ncType		nx_int8_t nx_uint8_t
syn keyword ncType		nx_int16_t nx_uint16_t
syn keyword ncType		nx_int32_t nx_uint32_t
syn keyword ncType		nx_int64_t nx_uint64_t
syn keyword ncType		nxle_int8_t nxle_uint8_t
syn keyword ncType		nxle_int16_t nxle_uint16_t
syn keyword ncType		nxle_int32_t nxle_uint32_t
syn keyword ncType		nxle_int64_t nxle_uint64_t

syn keyword ncFunction		command event task interface
syn keyword ncCall		call post fire as signal
syn keyword ncPreProc		includes
syn keyword ncInterface		module implementation configuration
syn keyword ncWiring		provides uses components
syn keyword ncConstant		SUCCESS FAIL
syn keyword ncBoolean		TRUE FALSE

" Default highlighting
command -nargs=+ HiLink hi def link <args>
HiLink nctype		type
HiLink ncboolean	boolean
HiLink ncfunction	type
HiLink nccall		statement
HiLink ncpreproc	structure
HiLink ncinterface	structure
HiLink ncwiring		statement
HiLink ncconstant	constant
delcommand HiLink

let b:current_syntax = "nc"

" vim: ts=8
