import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController noteNameController = TextEditingController();
  String _selectedPageSize = 'A4';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Create Notebook',
                      style: theme.textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 24),

                    // Notebook Name Field
                    TextField(
                      controller: noteNameController,
                      decoration: const InputDecoration(
                        labelText: 'Notebook Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Page Size Dropdown
                    DropdownButtonFormField<String>(
                      value: _selectedPageSize,
                      decoration: const InputDecoration(
                        labelText: 'Page Size',
                        border: OutlineInputBorder(),
                      ),
                      items: const [
                        DropdownMenuItem(value: 'A4', child: Text('A4')),
                        DropdownMenuItem(value: 'Letter', child: Text('Letter')),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedPageSize = value;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 30),

                    // Create Notebook Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.colorScheme.secondary,
                          foregroundColor: theme.colorScheme.onSecondary,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        onPressed: () {
                          final name = noteNameController.text.trim();
                          final size = _selectedPageSize;

                          if (name.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Please enter a notebook name')),
                            );
                            return;
                          }

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    'Created notebook "$name" with size $size')),
                          );
                        },
                        child: const Text('Create Notebook'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/icon/Logo_bg.png', height: 24),
                  const SizedBox(width: 8),
                  Text(
                    'NoteLab',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
