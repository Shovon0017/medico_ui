import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key,
    // required this.searchController,
    // required this.onTap,
    required this.onChanged});
  // final TextEditingController searchController;
  // final VoidCallback onTap;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: searchController,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8)),
        labelText: "Search Hospital or Doctors",
        // suffixIcon: InkWell(
        //     onTap: onTap,
        //     child: Icon(Icons.search))
      ),
    );
  }
}
