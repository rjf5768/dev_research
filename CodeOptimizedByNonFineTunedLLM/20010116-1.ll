; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010116-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010116-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Data = type { i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @find(%struct.Data* noundef %0, %struct.Data* noundef %1) #0 {
  %3 = alloca %struct.Data*, align 8
  %4 = alloca %struct.Data*, align 8
  %5 = alloca i32, align 4
  store %struct.Data* %0, %struct.Data** %3, align 8
  store %struct.Data* %1, %struct.Data** %4, align 8
  %6 = load %struct.Data*, %struct.Data** %4, align 8
  %7 = load %struct.Data*, %struct.Data** %3, align 8
  %8 = ptrtoint %struct.Data* %6 to i64
  %9 = ptrtoint %struct.Data* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 12
  %12 = ashr i64 %11, 2
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %19, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  call void @ok(i32 noundef %18)
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  br label %14, !llvm.loop !4

22:                                               ; preds = %14
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ok(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [4 x %struct.Data], align 16
  %2 = getelementptr inbounds [4 x %struct.Data], [4 x %struct.Data]* %1, i64 0, i64 0
  %3 = getelementptr inbounds %struct.Data, %struct.Data* %2, i64 0
  %4 = getelementptr inbounds [4 x %struct.Data], [4 x %struct.Data]* %1, i64 0, i64 0
  %5 = getelementptr inbounds %struct.Data, %struct.Data* %4, i64 4
  call void @find(%struct.Data* noundef %3, %struct.Data* noundef %5)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
