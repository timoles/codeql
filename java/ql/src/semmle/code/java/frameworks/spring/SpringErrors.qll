import java
private import semmle.code.java.dataflow.ExternalFlow

private class SpringErrorModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.springframework.validation;Errors;true;addAllErrors;;;Argument[0];Argument[-1];taint",
        "org.springframework.validation;Errors;true;getAllErrors;;;Argument[-1];ReturnValue;taint",
        "org.springframework.validation;Errors;true;getFieldError;;;Argument[-1];ReturnValue;taint",
        "org.springframework.validation;Errors;true;getFieldErrors;;;Argument[-1];ReturnValue;taint",
        // for review: excluding because I think field values are unlikely to carry meaningful taint, though I may be wrong.
        // "org.springframework.validation;Errors;true;getFieldValue;;;Argument[-1];ReturnValue;taint",
        "org.springframework.validation;Errors;true;getGlobalError;;;Argument[-1];ReturnValue;taint",
        "org.springframework.validation;Errors;true;getGlobalErrors;;;Argument[-1];ReturnValue;taint",
        "org.springframework.validation;Errors;true;reject;;;Argument[0..2];Argument[-1];taint",
        "org.springframework.validation;Errors;true;rejectValue;;;Argument[1..3];Argument[-1];taint",
        "org.springframework.validation;Errors;true;reject;;;Argument[0..2];Argument[-1];taint",
        "org.springframework.validation;Errors;true;rejectValue;;;Argument[1..3];Argument[-1];taint"
      ]
  }
}
