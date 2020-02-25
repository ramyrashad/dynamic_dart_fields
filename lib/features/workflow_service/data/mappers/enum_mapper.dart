import 'package:dynamic_dart_fields/core/util/enums.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';

class EnumMapper {
  static fieldTypeFromJson(String json) {
    switch (json) {
      case "Date":
        return FieldType.Date;
        break;
      case "Email":
        return FieldType.Email;
        break;
      case "Location":
        return FieldType.Location;
        break;
      case "Logic":
        return FieldType.Logic;
        break;
      case "Menu":
        return FieldType.Menu;
        break;
      case "Number":
        return FieldType.Number;
        break;
      case "PredefineList":
        return FieldType.PredefineList;
        break;
      case "Text":
        return FieldType.Text;
      case "TextArea":
        return FieldType.TextArea;
      case "Time":
        return FieldType.Time;
      default:
        return null;
    }
  }

  static fieldTypeToJson(FieldType obj) {
    switch (obj) {
      case FieldType.Date:
        return "Date";
      case FieldType.Email:
        return "Email";
      case FieldType.Location:
        return "Location";
      case FieldType.Logic:
        return "Logic";
      case FieldType.Menu:
        return "Menu";
      case FieldType.Number:
        return "Number";
      case FieldType.PredefineList:
        return "PredefineList";
      case FieldType.Text:
        return "Text";
      case FieldType.TextArea:
        return "TextArea";
      case FieldType.Time:
        return "Time";
      default:
        return "";
    }
  }

  static serviceTypeFromJson(String json) {
    switch (json) {
      case "ApplyToRoqia":
        return ServiceType.ApplyToRoqia;
        break;
      default:
        return null;
    }
  }

  static serviceTypeToJson(ServiceType obj) {
    switch (obj) {
      case ServiceType.ApplyToRoqia:
        return "ApplyToRoqia";
      default:
        return "";
    }
  }
}
