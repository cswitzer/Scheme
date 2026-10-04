#lang sicp

(#%require "count-leaves.rkt")
(#%require "invert-tree.rkt")
(#%require "tree-deletion.rkt")
(#%require "tree-height.rkt")
(#%require "tree-insert.rkt")
(#%require "tree-search.rkt")
(#%require "tree-size.rkt")
(#%require "tree-sum.rkt")
(#%require "tree-traversal.rkt")
(#%require (file "tree?-contains.rkt"))
(#%require "validate-tree.rkt")
(#%require "tree.rkt")

(#%provide
 count-leaves
 invert-tree
 tree-delete
 tree-height
 search-tree
 tree-size
 tree-sum
 preorder
 inorder
 postorder
 tree-contains?
 validate-tree
 test-tree
 display-tree)

(display-tree test-tree)
(display-tree (invert-tree test-tree))
