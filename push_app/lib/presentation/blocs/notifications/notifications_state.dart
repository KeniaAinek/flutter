part of 'notifications_bloc.dart';

class NotificationsState extends Equatable {

  final AuthorizationStatus status;
  final List<dynamic> notifications;

  const NotificationsState({
    required this.notifications,
    required this.status, 
  });
  
  @override
  List<Object> get props => [];
}
