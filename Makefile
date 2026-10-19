# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: callwood <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/10/15 13:05:28 by callwood          #+#    #+#              #
#    Updated: 2026/10/16 12:18:23 by callwood         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME        = libft.a

CC          = cc
CFLAGS      = -Wall -Wextra -Werror

OBJ_DIR     = objs

SRCS        = ft_isalnum.c \
              ft_isalpha.c \
              ft_isascii.c \
              ft_isdigit.c \
              ft_isprint.c \
              ft_strlen.c \
              ft_strchr.c \
              ft_strrchr.c \
              ft_tolower.c \
              ft_toupper.c \
              ft_memset.c \
              ft_bzero.c \
              ft_memcpy.c \
              ft_memmove.c \
              ft_memchr.c \
              ft_memcmp.c \
              ft_strncmp.c \
              ft_strlcpy.c \
              ft_strlcat.c \
              ft_strnstr.c \
              ft_atoi.c \
              ft_calloc.c \
              ft_strdup.c \
              ft_substr.c \
			  ft_strjoin.c \
			  ft_strtrim.c \
			  ft_split.c

OBJS        = $(SRCS:%.c=$(OBJ_DIR)/%.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJ_DIR)/%.o: %.c libft.h | $(OBJ_DIR)
	$(CC) $(CFLAGS) -I. -c $< -o $@

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
