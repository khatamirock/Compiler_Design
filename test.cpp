#include <stdio.h>
#include <stdlib.h>

// Define the structure for a node in the linked list
struct Node {
    int data;
    struct Node* next;
};

// Function to insert a new node at the beginning of the linked list
void insertNode(struct Node** head, int data) {
    // Create a new node
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->next = NULL;
    
    // Check if the linked list is empty
    if (*head == NULL) {
        *head = newNode;
    } else {
        // Make the new node the new head and point it to the previous head
        newNode->next = *head;
        *head = newNode;
    }
}

// Function to print the elements of the linked list
void printList(struct Node* head) {
    struct Node* current = head;
    printf("Linked List: ");
    
    while (current != NULL) {
        printf("%d ", current->data);
        current = current->next;
    }
    
    printf("\n");
}

int main() {
    struct Node* head = NULL; // Initialize an empty linked list

    // Insert nodes into the linked list
    insertNode(&head, 10);
    insertNode(&head, 20);
    insertNode(&head, 30);
    insertNode(&head, 330);
    insertNode(&head, 306);

    // Print the linked list
    printList(head);
    
    return 0;
}
