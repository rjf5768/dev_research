; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/SetjmpLongjmp/C/WhileLoop.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SetjmpLongjmp/C/WhileLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [16 x i8] c"Inside foo: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Return from longjmp: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.__jmp_buf_tag* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.__jmp_buf_tag*, align 8
  %4 = alloca i32, align 4
  store %struct.__jmp_buf_tag* %0, %struct.__jmp_buf_tag** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %5)
  %7 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @longjmp(%struct.__jmp_buf_tag* noundef %7, i32 noundef %8) #4
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 37, i32* %2, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %2, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %3, i64 0, i64 0
  %11 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef %10) #5
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %14)
  br label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %3, i64 0, i64 0
  %18 = load i32, i32* %2, align 4
  call void @foo(%struct.__jmp_buf_tag* noundef %17, i32 noundef %18)
  br label %19

19:                                               ; preds = %16, %13
  br label %5, !llvm.loop !4

20:                                               ; preds = %5
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
