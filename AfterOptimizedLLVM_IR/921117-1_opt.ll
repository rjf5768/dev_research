; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921117-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921117-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [11 x i8], i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@cell = dso_local global %struct.s zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s, align 4
  %5 = bitcast %struct.s* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.s, %struct.s* %4, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 99
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.s, %struct.s* %4, i32 0, i32 0
  %14 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 0
  %15 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 99, i32* getelementptr inbounds (%struct.s, %struct.s* @cell, i32 0, i32 1), align 4
  %2 = call i8* @strcpy(i8* noundef getelementptr inbounds (%struct.s, %struct.s* @cell, i32 0, i32 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %3 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.s* @cell to { i64, i64 }*), i32 0, i32 0), align 4
  %4 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.s* @cell to { i64, i64 }*), i32 0, i32 1), align 4
  %5 = call i32 @check(i64 %3, i64 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
