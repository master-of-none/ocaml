type 'a tree = 
  | Leaf
  | Node of 'a node

and 'a node = {
  value: 'a;
  left: 'a tree;
  right: 'a tree;
}
;;

let t =
  Node {
    value = 4;
    left = Node {
      value = 2;
      left = Node {value = 1; left = Leaf; right = Leaf};
      right = Node {value = 3; left = Leaf; right = Leaf}
    };
    right = Node {
      value = 5;
      left = Node {value = 6; left = Leaf; right = Leaf};
      right = Node {value = 7; left = Leaf; right = Leaf}
    }
  }
;;

let rec pre_order t = 
  match t with
  | Leaf -> ()
  | Node {value; left; right} -> 
    print_int value;
    print_string " ";
    pre_order left;
    pre_order right;
;;

let print_tree =
  print_endline " Preorder traversal tree ";
  pre_order t;