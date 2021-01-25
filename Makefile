NAME= libasm.a

SRC=	ft_read.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s

LIB= libasm.h
OBJ= $(SRC:.c=.o)
OBJB= $(SRCB:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(LIB)
	@nasm -fmacho64 $(SRC)
	@ar rc $(NAME) $(OBJ) 
	@ranlib $(NAME)

clean:
	@rm -f $(OBJ) $(OBJB)

fclean: clean 
	@rm -f $(NAME)

re: fclean all

