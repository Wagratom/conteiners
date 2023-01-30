/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vector.hpp                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wwalas- <wwallas-@student.42sp.org.br>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/30 11:54:42 by wwalas-           #+#    #+#             */
/*   Updated: 2023/01/30 14:00:22 by wwalas-          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#include <iostream>

template<typename T>
class vector
{
	public:
		vector( void );
		~vector( void );
		alloc_array( T type) {};
	private:
		T*	_array;
		int	size;
		int	_index;
};

