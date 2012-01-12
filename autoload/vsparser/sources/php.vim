function! vsparser#sources#php#define()
  return s:source
endfunction

let s:source = {
  \   'kinds': [{
  \     'name': 'class',
  \     'type': 'block',
  \     'pattern': '^class\s\+\(\w\+\)\_[^{]*{',
  \     'close': '^}',
  \   }, {
  \     'name': 'function',
  \     'type': 'block',
  \     'pattern': '^function\s\+&\=\s*\(\w\+\)\_[^{]*{',
  \     'close': '^}',
  \   }, {
  \     'name': 'block_skip',
  \     'type': 'block',
  \     'pattern': '^{',
  \     'close': '^}',
  \   }, {
  \     'name': 'comment',
  \     'type': 'inline',
  \     'pattern': '^/\*\(\_.\{-}\)\*/',
  \   }, {
  \     'name': 'comment-line',
  \     'type': 'inline',
  \     'pattern': '^//\_.\{-}\n',
  \   }, {
  \     'name': 'string',
  \     'type': 'inline',
  \     'pattern': '^"\(\(\(\\"\)\|[^"]\)\{-}\)"',
  \   }, {
  \     'name': 'string',
  \     'type': 'inline',
  \     'pattern': '^'. "'". '\(\(\(\\'. "'". '\)\|[^'. "'". ']\)\{-}\)'. "'",
  \   }, {
  \     'name': 'number',
  \     'type': 'inline',
  \     'pattern': '^\d\+\(.\d\+\)\=',
  \   }, {
  \     'name': 'array',
  \     'type': 'inline',
  \     'pattern': '^array(',
  \   }, {
  \     'name': 'object',
  \     'type': 'inline',
  \     'pattern': '^new\s\+\(\w\+\)',
  \   }, {
  \     'name': 'variable',
  \     'type': 'inline',
  \     'pattern': '^\$\(\w\+\)',
  \   }, {
  \     'name': 'assign',
  \     'type': 'inline',
  \     'pattern': '^\s*&\=\s*=\s*',
  \   }, {
  \     'name': 'member',
  \     'type': 'inline',
  \     'pattern': '^->\(\w\+\)',
  \   }]
  \ }

