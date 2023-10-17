#include "lists.h"
#include <stdio.h>

/**
 * print_dlistint - Print a doubly linked list
 *
 * @h: A pointer to the first element of the list
 *
 * Return: The number of elements printed
 */
size_t print_dlistint(const dlistint_t *h)
{
	size_t n;
	n = 0;
	while (h)
	{
		printf("%d\n", h->n);
		h = h->next;
		n++;
	}
	return (n);
}
