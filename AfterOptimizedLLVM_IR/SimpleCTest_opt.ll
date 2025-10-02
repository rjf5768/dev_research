; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/SetjmpLongjmp/C/SimpleCTest.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SetjmpLongjmp/C/SimpleCTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [12 x i8] c"Inside baz\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Inside main\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ret == %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(%struct.__jmp_buf_tag* noundef %0) #0 {
  %2 = alloca %struct.__jmp_buf_tag*, align 8
  store %struct.__jmp_buf_tag* %0, %struct.__jmp_buf_tag** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %2, align 8
  call void @longjmp(%struct.__jmp_buf_tag* noundef %4, i32 noundef 37) #4
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %5 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %2, i64 0, i64 0
  %6 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef %5) #5
  store i32 %6, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef %9)
  br label %13

11:                                               ; preds = %0
  %12 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %2, i64 0, i64 0
  call void @baz(%struct.__jmp_buf_tag* noundef %12)
  br label %13

13:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
