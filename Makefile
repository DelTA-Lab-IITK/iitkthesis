SHELL	:= /usr/bin/zsh

err :
	$(error make clean is a destructive operation. Specify target explicitly.)

clean :
	find .								\
		-maxdepth 1						\
		\( -iname 'iitkthesis.*' -or -iname 'example.*' \)	\
		-and -not						\
		\( -iname '*.tex' -or -iname '*.cls' \)			\
		-exec rm {} \+
