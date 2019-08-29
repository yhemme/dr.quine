.PHONY:all clean fclean Colleen Grace Sully re

CC= nasm

CFLAGS= -f macho64

LNK = ld

LFLAGS = -macosx_version_min 10.8 -lSystem


NAME= Colleen

CPATH= Colleen/

C_FILE= Colleen.s

COBJ=$(addprefix $(CPATH), $(COFILES))

COFILES=$(C_FILE:.s=.o)


NAME1= Grace

GPATH= Grace/

G_FILE= Grace.s

GOBJ=$(addprefix $(GPATH), $(GOFILES))

GOFILES=$(G_FILE:.s=.o)


NAME2= Sully

SPATH= Sully/

S_FILE= Sully.s

SOBJ=$(addprefix $(SPATH), $(SOFILES))

SOFILES=$(S_FILE:.s=.o)


all: $(NAME) $(NAME1) $(NAME2)


$(NAME): $(COBJ)

$(CPATH)%.o: $(CPATH)%.s
	$(CC) $(CFLAGS) $< -o $@
	$(LNK) $(COBJ) $(LFLAGS) -o $(CPATH)$(NAME)


$(NAME1): $(GOBJ)

$(GPATH)%.o: $(GPATH)%.s
	$(CC) $(CFLAGS) $< -o $@
	$(LNK) $(GOBJ) $(LFLAGS) -o $(GPATH)$(NAME1)


$(NAME2): $(SOBJ)

$(SPATH)%.o: $(SPATH)%.s
	$(CC) $(CFLAGS) $< -o $@
	$(LNK) $(SOBJ) $(LFLAGS) -o $(SPATH)$(NAME2)


clean:
	rm -rf $(COBJ)
	rm -rf $(GOBJ)
	rm -rf $(SOBJ)

fclean: clean
	rm -rf $(CPATH)$(NAME)
	rm -rf $(GPATH)$(NAME1)
	rm -rf $(SPATH)$(NAME2)

re: fclean all


