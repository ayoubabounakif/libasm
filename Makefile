NAME = compile

NASM = nasm

NASMFLAGS = -f elf64

SRCS = ft_write.s ft_strlen.s

OBJS = $(SRCS:.s=.o)

all:	$(NAME)

$(NAME):	$(OBJS)

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<
	rm -rf $(NAME)

clean:
	rm -rf $(OBJS)

fclean:	clean
	rm -rf $(NAME)

re:	fclean all
