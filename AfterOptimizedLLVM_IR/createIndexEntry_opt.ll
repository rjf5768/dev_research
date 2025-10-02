; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/createIndexEntry.c'
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
define dso_local %struct.IndexEntry* @createIndexEntry() #0 {
  %1 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %1, align 8
  %2 = call noalias i8* @malloc(i64 noundef 48) #3
  %3 = bitcast i8* %2 to %struct.IndexEntry*
  store %struct.IndexEntry* %3, %struct.IndexEntry** %1, align 8
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %5 = icmp eq %struct.IndexEntry* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @createIndexEntry.name, i64 0, i64 0), i8 noundef signext 1)
  br label %48

7:                                                ; preds = %0
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %9 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.IndexNode**
  store %struct.IndexNode* null, %struct.IndexNode** %10, align 8
  %11 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %12 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.DataObject**
  store %struct.DataObject* null, %struct.DataObject** %13, align 8
  %14 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %15 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %16, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %17, align 8
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %19 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %20, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %21, align 4
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %23 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %24, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %25, align 8
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %27 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %28, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %29, align 4
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %31 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %32, i32 0, i32 0
  store float 0x47EFFFFFE0000000, float* %33, align 8
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %35 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %36, i32 0, i32 1
  store float 0x47EFFFFFE0000000, float* %37, align 4
  %38 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %39 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %40, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %41, align 8
  %42 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %43 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %44, i32 0, i32 3
  store float 0x47EFFFFFE0000000, float* %45, align 4
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %47 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %46, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %47, align 8
  br label %48

48:                                               ; preds = %7, %6
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  ret %struct.IndexEntry* %49
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
