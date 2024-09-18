part of 'broken_bloc.dart';

abstract class BrokenEvent {}

class GetBrokenEvent extends BrokenEvent {}

class AddBrokenEvent extends BrokenEvent {
  final Broken broken;
  AddBrokenEvent({required this.broken});
}

class EditBrokenEvent extends BrokenEvent {
  final Broken broken;
  EditBrokenEvent({required this.broken});
}

class DeleteBrokenEvent extends BrokenEvent {
  final int id;
  DeleteBrokenEvent({required this.id});
}
