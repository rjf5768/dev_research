; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84339.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84339.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, [1 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %6 = call i64 @strlen(i8* noundef %5) #3
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %6 = call i64 @strlen(i8* noundef %5) #3
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i8* @malloc(i64 noundef 24) #3
  %4 = bitcast i8* %3 to %struct.S*
  store %struct.S* %4, %struct.S** %2, align 8
  %5 = load %struct.S*, %struct.S** %2, align 8
  %6 = icmp ne %struct.S* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %0
  %8 = load %struct.S*, %struct.S** %2, align 8
  %9 = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.S*, %struct.S** %2, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 1
  %12 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  %13 = call i8* @strcpy(i8* noundef %12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #3
  %14 = load %struct.S*, %struct.S** %2, align 8
  %15 = call i32 @foo(%struct.S* noundef %14)
  %16 = icmp ne i32 %15, 7
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = load %struct.S*, %struct.S** %2, align 8
  %19 = call i32 @bar(%struct.S* noundef %18)
  %20 = icmp ne i32 %19, 7
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %7
  call void @abort() #4
  unreachable

22:                                               ; preds = %17
  %23 = load %struct.S*, %struct.S** %2, align 8
  %24 = bitcast %struct.S* %23 to i8*
  call void @free(i8* noundef %24) #3
  br label %25

25:                                               ; preds = %22, %0
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
