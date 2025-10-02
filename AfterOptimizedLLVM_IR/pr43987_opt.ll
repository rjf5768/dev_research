; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43987.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43987.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.globals = type { i32, i8** }

@B = dso_local global [2048 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_input_file(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i8**, i8*** %2, align 8
  %4 = bitcast i8** %3 to i8*
  %5 = load i8**, i8*** getelementptr inbounds (%struct.globals, %struct.globals* bitcast ([2048 x i8]* @B to %struct.globals*), i32 0, i32 1), align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  store i8* %4, i8** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8** %2, i8*** getelementptr inbounds (%struct.globals, %struct.globals* bitcast ([2048 x i8]* @B to %struct.globals*), i32 0, i32 1), align 8
  call void @add_input_file(i8** noundef inttoptr (i64 -1 to i8**))
  %3 = load i8**, i8*** getelementptr inbounds (%struct.globals, %struct.globals* bitcast ([2048 x i8]* @B to %struct.globals*), i32 0, i32 1), align 8
  %4 = getelementptr inbounds i8*, i8** %3, i64 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, inttoptr (i64 -1 to i8*)
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
