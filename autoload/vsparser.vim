function! vsparser#parse(source, context)
  while a:context.idx <= a:context.len
    " Find block close.
    if !empty(a:context.stack)
      let matches = matchlist(a:context.src, a:context.stack[-1].close, a:context.idx)
      if !empty(matches)
        " Increment matched string.
        let a:context.idx = a:context.idx + strlen(matches[0])

        " Pop block.
        call remove(a:context.stack, -1)
        continue
      endif
    endif

    " Find kind.
    for kind in a:source.kinds
      let matches = matchlist(a:context.src, kind.pattern, a:context.idx)
      if !empty(matches)
        " Increment matched string.
        let a:context.idx = a:context.idx + strlen(matches[0])

        " Queing token for debug.
        call add(a:context.token, [kind.name, matches[1], matches[0]])

        " Push block.
        if kind.type == 'block'
          call add(a:context.stack, kind)
        endif

        " Process hook function.
        if exists('kind.hook') && exists('a:info.'. kind.hook)
          call a:info[kind.hook](a:context, matches)
        endif
        break
      endif
    endfor
    let a:context.idx = a:context.idx + 1
  endwhile
  return a:context
endfunction

