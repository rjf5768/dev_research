; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/SetjmpLongjmp/C/FarJump.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SetjmpLongjmp/C/FarJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [13 x i8] c"Inside quux\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Longjmping from quux: 927\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Inside qux\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error: Shouldn't be here in qux\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Inside baz\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Error: Shouldn't be here in baz\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Inside bar\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Inside foo\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Returning from longjmp into foo\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @quux(%struct.__jmp_buf_tag* noundef %0) #0 {
  %2 = alloca %struct.__jmp_buf_tag*, align 8
  store %struct.__jmp_buf_tag* %0, %struct.__jmp_buf_tag** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %5 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %2, align 8
  call void @longjmp(%struct.__jmp_buf_tag* noundef %5, i32 noundef 927) #4
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @qux(%struct.__jmp_buf_tag* noundef %0) #0 {
  %2 = alloca %struct.__jmp_buf_tag*, align 8
  %3 = alloca [1 x %struct.__jmp_buf_tag], align 16
  store %struct.__jmp_buf_tag* %0, %struct.__jmp_buf_tag** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %5 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %3, i64 0, i64 0
  %6 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef %5) #5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %2, align 8
  call void @quux(%struct.__jmp_buf_tag* noundef %9)
  br label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(%struct.__jmp_buf_tag* noundef %0) #0 {
  %2 = alloca %struct.__jmp_buf_tag*, align 8
  %3 = alloca [1 x %struct.__jmp_buf_tag], align 16
  store %struct.__jmp_buf_tag* %0, %struct.__jmp_buf_tag** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %5 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %3, i64 0, i64 0
  %6 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef %5) #5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %2, align 8
  call void @qux(%struct.__jmp_buf_tag* noundef %9)
  br label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.__jmp_buf_tag* noundef %0) #0 {
  %2 = alloca %struct.__jmp_buf_tag*, align 8
  store %struct.__jmp_buf_tag* %0, %struct.__jmp_buf_tag** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %4 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %2, align 8
  call void @baz(%struct.__jmp_buf_tag* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %3 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %1, i64 0, i64 0
  %4 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef %3) #5
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %1, i64 0, i64 0
  call void @bar(%struct.__jmp_buf_tag* noundef %7)
  br label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  ret i32 0
}

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
