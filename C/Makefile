# ========== Editable ========== #
COLLEEN    := Colleen
GRACE    := Grace
SULLY    := Sully
# # ============================== #

# # ========== Standard ========== #
CC        := gcc
FLAGS    := -Wall -Wextra -Werror
# # ============================== #

# # =========== Files ============ #
COLLEEN_SRCS_FILE    := Colleen.c
GRACE_SRCS_FILE        := Grace.c
SULLY_SRCS_FILE        := Sully.c
# # ============================== #

# # ========== Sources =========== #
SRCS_PATH        := ./
COLLEEN_SRCS    := $(addprefix $(SRCS_PATH), $(COLLEEN_SRCS_FILE))
GRACE_SRCS        := $(addprefix $(SRCS_PATH), $(GRACE_SRCS_FILE))
SULLY_SRCS        := $(addprefix $(SRCS_PATH), $(SULLY_SRCS_FILE))
# # ============================== #

# # ========== Objects =========== #
OBJS_PATH        := objs/
COLLEEN_OBJS    := $(addprefix $(OBJS_PATH), $(COLLEEN_SRCS_FILE:.c=.o))
GRACE_OBJS        := $(addprefix $(OBJS_PATH), $(GRACE_SRCS_FILE:.c=.o))
SULLY_OBJS        := $(addprefix $(OBJS_PATH), $(SULLY_SRCS_FILE:.c=.o))
# # ============================== #

.PHONY: all clean fclean re

all: $(COLLEEN) $(GRACE) $(SULLY)

$(OBJS_PATH)%.o: $(SRCS_PATH)%.c
	@mkdir $(OBJS_PATH) 2> /dev/null || true
	$(CC) $(FLAGS) -o $@ -c $<

$(COLLEEN): $(COLLEEN_OBJS)
	$(CC) $(FLAGS) $(COLLEEN_OBJS) -o $@

$(GRACE): $(GRACE_OBJS)
	$(CC) $(FLAGS) $(GRACE_OBJS) -o $@

$(SULLY): $(SULLY_OBJS)
	$(CC) $(FLAGS) $(SULLY_OBJS) -o $@

clean:
	@rm -fv $(COLLEEN_OBJS) $(GRACE_OBJS) Grace_kid.c $(SULLY_OBJS)
	@rmdir $(OBJS_PATH) 2> /dev/null || true

fclean: clean
	@rm -fv $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all
