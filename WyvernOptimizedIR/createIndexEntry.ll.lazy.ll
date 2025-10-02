; ModuleID = './createIndexEntry.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/createIndexEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon.0 }
%union.anon.0 = type { i8* }

@createIndexEntry.name = internal global [17 x i8] c"createIndexEntry\00", align 16
@.str = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.IndexEntry* @createIndexEntry() #0 {
  %1 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %2 = bitcast i8* %1 to %struct.IndexEntry*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 noundef signext 0) #3
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @createIndexEntry.name, i64 0, i64 0), i8 noundef signext 1) #3
  br label %17

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 0, i32 0
  store %struct.IndexNode* null, %struct.IndexNode** %6, align 8
  %7 = bitcast i8* %1 to %struct.DataObject**
  store %struct.DataObject* null, %struct.DataObject** %7, align 8
  %8 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 1, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %8, align 8
  %9 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 1, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %9, align 4
  %10 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 1, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %10, align 8
  %11 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 1, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %11, align 4
  %12 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 1, i32 1, i32 0
  store float 0x47EFFFFFE0000000, float* %12, align 8
  %13 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 1, i32 1, i32 1
  store float 0x47EFFFFFE0000000, float* %13, align 4
  %14 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 1, i32 1, i32 2
  store float 0x47EFFFFFE0000000, float* %14, align 8
  %15 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 1, i32 1, i32 3
  store float 0x47EFFFFFE0000000, float* %15, align 4
  %16 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %2, i64 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %16, align 8
  br label %17

17:                                               ; preds = %5, %4
  ret %struct.IndexEntry* %2
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
