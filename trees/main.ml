type 'a tree = 
  | Leaf
  | Node of 'a * 'a tree * 'a tree
;;

let t = 
  Node(4,
    Node (2,
      Node(1, Leaf, Leaf),
      Node (3, Leaf, Leaf)
    ),
  Node(5,
    Node(6, Leaf, Leaf),
    Node(7, Leaf, Leaf)
  )
)
;;

let rec print_tree_preorder tree =
  match tree with
    | Leaf -> ()
    | Node (value, left, right) ->
        print_int value;
        print_string " " ;
        print_tree_preorder left;
        print_tree_preorder right;
 
;;

let print_val = 
  print_string "Preorder tree traversal";
  print_newline();
  print_tree_preorder t;
;;
