import 'package:flutter/material.dart';
// import 'package:tree_view_flutter/tree_view_flutter.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

class SimpleTreeViewWidget extends StatelessWidget {
  const SimpleTreeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TreeViewWidget1(),
    );
  }
}

class TreeViewWidget1 extends StatefulWidget {
  const TreeViewWidget1({super.key});

  @override
  State<TreeViewWidget1> createState() => _TreeViewWidget1State();
}

class _TreeViewWidget1State extends State<TreeViewWidget1> {
  final TreeController _treeController = TreeController();

  @override
  void initState() {
    setState(() {
      _treeController.collapseAll();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TreeView(treeController: _treeController, indent: 10, nodes: [
      TreeNode(content: const Text("root1")),
      TreeNode(
        content: const Text("root2"),
        children: [
          TreeNode(content: const Text("child21")),
          TreeNode(content: const Text("child22")),
          TreeNode(
            content: const Text("root23"),
            children: [
              TreeNode(content: const Text("child231")),
            ],
          ),
        ],
      ),
    ]);
  }
}
