; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/siod/siod.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/siod/siod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@siod_argv = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"siod\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"-h100000:10\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-g0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-o1000\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"-s200000\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-n2048\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8**, i8*** %6, align 8
  store i8** %11, i8*** %9, align 8
  call void @process_cla(i32 noundef 6, i8** noundef getelementptr inbounds ([6 x i8*], [6 x i8*]* @siod_argv, i64 0, i64 0), i32 noundef 1)
  %12 = load i32, i32* %8, align 4
  %13 = load i8**, i8*** %9, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @siod_main(i32 noundef %12, i8** noundef %13, i8** noundef %14)
  ret i32 %15
}

declare dso_local void @process_cla(i32 noundef, i8** noundef, i32 noundef) #1

declare dso_local i32 @siod_main(i32 noundef, i8** noundef, i8** noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
