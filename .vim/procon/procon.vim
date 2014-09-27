let filename = expand("%")
let lines = []
let template_file_name = expand("~/.vim/procon/") . "template.cpp"
for line in readfile(template_file_name)
    call add(lines,line)
endfor

call writefile(lines,filename)

e %
38
