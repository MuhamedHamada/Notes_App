import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/AddNoteCubit.dart';
import 'package:notesapp/cubits/AddNoteState.dart';
import 'package:notesapp/widgets/AddNoteForm.dart';
import 'package:notesapp/widgets/CustomButton.dart';
import 'package:notesapp/widgets/CustomTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
   AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print("failed");
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding:  EdgeInsets.only(
                  right: 16, left: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),

                child: SingleChildScrollView(child: AddNoteForm()),
              ),
            );
          },
        ),
      ),
    );
  }
}
