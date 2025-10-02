; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/941014-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/941014-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_t = type { i16, i16 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @a1(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.foo_t* @f() #0 {
  %1 = alloca %struct.foo_t*, align 8
  %2 = call noalias i8* @malloc(i64 noundef 4) #4
  %3 = bitcast i8* %2 to %struct.foo_t*
  store %struct.foo_t* %3, %struct.foo_t** %1, align 8
  %4 = load %struct.foo_t*, %struct.foo_t** %1, align 8
  %5 = ptrtoint %struct.foo_t* %4 to i64
  %6 = sub i64 %5, 30
  call void @a1(i64 noundef %6)
  %7 = load %struct.foo_t*, %struct.foo_t** %1, align 8
  %8 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %7, i32 0, i32 0
  %9 = load volatile i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 61440
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load %struct.foo_t*, %struct.foo_t** %1, align 8
  %15 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %14, i32 0, i32 0
  %16 = load volatile i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %17)
  br label %19

19:                                               ; preds = %13, %0
  %20 = load %struct.foo_t*, %struct.foo_t** %1, align 8
  %21 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %20, i32 0, i32 1
  store volatile i16 256, i16* %21, align 2
  %22 = load %struct.foo_t*, %struct.foo_t** %1, align 8
  %23 = ptrtoint %struct.foo_t* %22 to i64
  %24 = add i64 %23, 2
  call void @a1(i64 noundef %24)
  %25 = load %struct.foo_t*, %struct.foo_t** %1, align 8
  %26 = ptrtoint %struct.foo_t* %25 to i64
  %27 = sub i64 %26, 30
  call void @a1(i64 noundef %27)
  %28 = load %struct.foo_t*, %struct.foo_t** %1, align 8
  ret %struct.foo_t* %28
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.foo_t*, align 8
  store i32 0, i32* %1, align 4
  %3 = call %struct.foo_t* @f()
  store %struct.foo_t* %3, %struct.foo_t** %2, align 8
  %4 = load %struct.foo_t*, %struct.foo_t** %2, align 8
  %5 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %4, i32 0, i32 1
  %6 = load volatile i16, i16* %5, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp ne i32 %7, 256
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #5
  unreachable

10:                                               ; preds = %0
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
