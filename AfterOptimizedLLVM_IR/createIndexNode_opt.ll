; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/createIndexNode.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/createIndexNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@createIndexNode.name = internal global [16 x i8] c"createIndexNode\00", align 16
@.str = private unnamed_addr constant [24 x i8] c"invalid level specified\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.IndexNode* @createIndexNode(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.IndexNode*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.IndexNode* null, %struct.IndexNode** %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @errorMessage(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @createIndexNode.name, i64 0, i64 0), i8 noundef signext 1)
  store %struct.IndexNode* null, %struct.IndexNode** %3, align 8
  br label %18

7:                                                ; preds = %1
  %8 = call noalias i8* @malloc(i64 noundef 16) #3
  %9 = bitcast i8* %8 to %struct.IndexNode*
  store %struct.IndexNode* %9, %struct.IndexNode** %3, align 8
  %10 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %11 = icmp eq %struct.IndexNode* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @createIndexNode.name, i64 0, i64 0), i8 noundef signext 1)
  br label %17

13:                                               ; preds = %7
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %16 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %13, %12
  br label %18

18:                                               ; preds = %17, %6
  %19 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %20 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %19, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %20, align 8
  %21 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  ret %struct.IndexNode* %21
}

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
