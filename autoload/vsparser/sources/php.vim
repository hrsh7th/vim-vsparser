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
  \     'pattern': '^/\*\(\(\_[^\*]\|\*[^/]\)*\)\*/',
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
  \   }]
  \ }

