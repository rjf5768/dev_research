; ModuleID = './createIndexNode.ll'
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
define dso_local noalias %struct.IndexNode* @createIndexNode(i64 noundef %0) #0 {
  %2 = icmp slt i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  call void @errorMessage(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 noundef signext 0) #3
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @createIndexNode.name, i64 0, i64 0), i8 noundef signext 1) #3
  br label %12

4:                                                ; preds = %1
  %5 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %6 = bitcast i8* %5 to %struct.IndexNode*
  %7 = icmp eq i8* %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8 noundef signext 0) #3
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @createIndexNode.name, i64 0, i64 0), i8 noundef signext 1) #3
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %6, i64 0, i32 0
  store i64 %0, i64* %10, align 8
  br label %11

11:                                               ; preds = %9, %8
  br label %12

12:                                               ; preds = %11, %3
  %.0 = phi %struct.IndexNode* [ null, %3 ], [ %6, %11 ]
  %13 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %.0, i64 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %13, align 8
  ret %struct.IndexNode* %.0
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
