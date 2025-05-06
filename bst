#include<iostream>
using namespace std;

struct node{
    int data;
    node *left,*right;
    
    node(int val =-1){
       data = val;
       left = right = nullptr;
    }
};

class BST{
public:
   node *root;

   BST(){
       root = nullptr;
   }
   
   void insert(){
     char ans;
     do{
     node *newnode = new node();
     cout<<"enter data :"<<endl;
     cin>>newnode->data;
     if(root==nullptr){
         root = newnode;
     }
     else{
       
         node*temp=root;
          while(true){
         if(newnode->data < temp->data){
             if(temp->left == nullptr){
                 temp -> left = newnode;
                 break;
             }
             else{
                 temp=temp->left;
             }
         }
         else if(newnode->data > temp->data){
             if(temp->right == nullptr){
                 temp -> right= newnode;
                 break;
             }
             else{
                 temp=temp->right;
             }
         }
         else{
             cout<<"duplicate values not allowed"<<endl;
         }
         }
     }cout<<"do you want to continue (y/n)"<<endl;
         cin>>ans;
     }while(ans=='y' || ans=='Y');
     
   }
   
   void inorder (node *temp){
       if( temp !=nullptr){
           inorder(temp->left);
           cout<<temp->data<<" ";
           inorder(temp->right);
       }
       
   }
   
   void findmin(node* temp){
       cout<<endl;
       while(temp->left !=nullptr){
           temp=temp->left;
       }
       cout<<"\n"<<temp->data;
   }
};

int main(){
 BST t;
 t.insert();
 t.inorder(t.root);
 t.findmin(t.root);
 return 0;
