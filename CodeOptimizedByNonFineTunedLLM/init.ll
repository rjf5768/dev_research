; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/init.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/compiler/init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"writeln\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"readf\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"readi\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"writef\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"writei\00", align 1
@keywords = dso_local global [14 x %struct.entry] [%struct.entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 2002, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2003, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 2007, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 2008, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 2024, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 2009, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 2010, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 2011, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 2042, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 2043, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 2044, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 2045, i32 0, i32 0, i32 0, i32 0 }, %struct.entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 2046, i32 0, i32 0, i32 0, i32 0 }, %struct.entry zeroinitializer], align 16
@lineno = dso_local global i32 0, align 4
@LabelCounter = dso_local global i32 0, align 4
@DecCount = dso_local global i32 0, align 4
@ErrorFlag = dso_local global i32 0, align 4
@NumberC = dso_local global i32 0, align 4
@lookahead = dso_local global i32 0, align 4
@tokenval = dso_local global i32 0, align 4
@ftokenval = dso_local global float 0.000000e+00, align 4
@FloatFlag = dso_local global i32 0, align 4
@offset = dso_local global i32 0, align 4
@lexbuf = dso_local global [128 x i8] zeroinitializer, align 16
@LocalIndex = dso_local global i32 0, align 4
@GlobalIndex = dso_local global i32 0, align 4
@NextLookahead = dso_local global i32 0, align 4
@NextTokenval = dso_local global i32 0, align 4
@NextFtokenval = dso_local global float 0.000000e+00, align 4
@PreviousLookahead = dso_local global i32 0, align 4
@PreviousTokenval = dso_local global i32 0, align 4
@PreviousFtokenval = dso_local global float 0.000000e+00, align 4
@Scope = dso_local global i32 0, align 4
@ReturnLabel = dso_local global i32 0, align 4
@CallReturnAddr = dso_local global i32 0, align 4
@FuncNameIndex = dso_local global i32 0, align 4
@ArrayParsed = dso_local global i32 0, align 4
@GlobalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16
@LocalTable = dso_local global [100 x %struct.entry] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @init() #0 {
  %1 = alloca %struct.entry*, align 8
  store %struct.entry* getelementptr inbounds ([14 x %struct.entry], [14 x %struct.entry]* @keywords, i64 0, i64 0), %struct.entry** %1, align 8
  br label %2

2:                                                ; preds = %21, %0
  %3 = load %struct.entry*, %struct.entry** %1, align 8
  %4 = getelementptr inbounds %struct.entry, %struct.entry* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load %struct.entry*, %struct.entry** %1, align 8
  %9 = getelementptr inbounds %struct.entry, %struct.entry* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.entry*, %struct.entry** %1, align 8
  %12 = getelementptr inbounds %struct.entry, %struct.entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.entry*, %struct.entry** %1, align 8
  %15 = getelementptr inbounds %struct.entry, %struct.entry* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.entry*, %struct.entry** %1, align 8
  %18 = getelementptr inbounds %struct.entry, %struct.entry* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @GlobalInsert(i8* noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef 0, i32 noundef 0)
  br label %21

21:                                               ; preds = %7
  %22 = load %struct.entry*, %struct.entry** %1, align 8
  %23 = getelementptr inbounds %struct.entry, %struct.entry* %22, i32 1
  store %struct.entry* %23, %struct.entry** %1, align 8
  br label %2, !llvm.loop !4

24:                                               ; preds = %2
  store i32 1, i32* @lineno, align 4
  store i32 1, i32* @LabelCounter, align 4
  store i32 2, i32* @DecCount, align 4
  store i32 0, i32* @ErrorFlag, align 4
  store i32 0, i32* @NumberC, align 4
  ret void
}

declare dso_local i32 @GlobalInsert(i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
