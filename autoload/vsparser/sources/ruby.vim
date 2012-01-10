function! vsparser#sources#ruby#define()
  return s:source
endfunction

" TODO: fix single quote string has \'.
let s:source = {
  \   'kinds': [{
  \     'name': 'module',
  \     'type': 'block',
  \     'pattern': '^module\s\+\(\w\+\)',
  \     'close': '^end',
  \   }, {
  \     'name': 'class',
  \     'type': 'block',
  \     'pattern': '^class\s\+\(\w\+\)',
  \     'close': '^end',
  \   }, {
  \     'name': 'def',
  \     'type': 'block',
  \     'pattern': '^def\s\+\(\(self\.\)\=\w\+\)',
  \     'close': '^end',
  \   }, {
  \     'name': 'block_skip',
  \     'type': 'block',
  \     'pattern': '^\n\s\{-}\(unless\|if\|while\|for\|case\)',
  \     'close': '^end',
  \   }, {
  \     'name': 'block_skip',
  \     'type': 'block',
  \     'pattern': '^do',
  \     'close': '^end',
  \   }, {
  \     'name': 'comment',
  \     'type': 'inline',
  \     'pattern': '^\n=begin\_.\{-}\n\s*=end',
  \   }, {
  \     'name': 'comment-line',
  \     'type': 'inline',
  \     'pattern': '^#[^\_$]*',
  \   }, {
  \     'name': 'string',
  \     'type': 'inline',
  \     'pattern': '^"\(\(\(\\"\)\|[^"]\)*\)"',
  \   }, {
  \     'name': 'string',
  \     'type': 'inline',
  \     'pattern': "^'[^']*'",
  \   }]
  \ }

