import 'package:stock_management_system/Data/Api_response/Status.dart';

class ApiResponse<T>{
  Status? status;
  T? data;
  String? message;

  ApiResponse.loading():status = Status.LOADING;
  ApiResponse.completed(this.data):status = Status.COMPLETED;
  ApiResponse.error(this.message):status = Status.ERROR;

  @override
  String toString(){
    return 'status $status \n data $data \n message $message';
  }
}
