# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wwalas- <wwallas-@student.42sp.org.br>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/30 13:39:34 by wwalas-           #+#    #+#              #
#    Updated: 2023/01/30 14:02:16 by wwalas-          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= vector

SOURCES		=	main.cpp vector.cpp

CC			=	c++
CFLAGS		=	#-Wall -Wextra -Werror -std=c++98

RM			=	rm -rf

OBJS_DIR	=	objects
OBJS		=	$(patsubst %.cpp, $(OBJS_DIR)/%.o, $(SOURCES))

$(OBJS_DIR)/%.o:	%.cpp
			$(CC) -c $< -o $@ -I.

all:	$(NAME)

$(NAME):	$(OBJS_DIR) $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ -I.

$(OBJS_DIR):
	mkdir -p objects

clean:
	$(RM) $(OBJS_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all
