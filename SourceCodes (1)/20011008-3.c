; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011008-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011008-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__db_lsn = type { i32, i32 }
%struct.__db_txnlist = type { i32, %struct.anon, %union.anon }
%struct.anon = type { %struct.__db_txnlist*, %struct.__db_txnlist** }
%union.anon = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i8*, i32, i8*, [20 x i8] }
%struct.anon.2 = type { i32, i32, %struct.__db_lsn* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @log_compare(%struct.__db_lsn* noundef %0, %struct.__db_lsn* noundef %1) #0 {
  %3 = alloca %struct.__db_lsn*, align 8
  %4 = alloca %struct.__db_lsn*, align 8
  store %struct.__db_lsn* %0, %struct.__db_lsn** %3, align 8
  store %struct.__db_lsn* %1, %struct.__db_lsn** %4, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @__db_txnlist_lsnadd(i32 noundef %0, %struct.__db_txnlist* noundef %1, %struct.__db_lsn* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.__db_txnlist*, align 8
  %7 = alloca %struct.__db_lsn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.__db_lsn, align 4
  store i32 %0, i32* %5, align 4
  store %struct.__db_txnlist* %1, %struct.__db_txnlist** %6, align 8
  store %struct.__db_lsn* %2, %struct.__db_lsn** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %105, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %24

18:                                               ; preds = %12
  %19 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %20 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %19, i32 0, i32 2
  %21 = bitcast %union.anon* %20 to %struct.anon.2*
  %22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = phi i32 [ 1, %17 ], [ %23, %18 ]
  %26 = icmp slt i32 %13, %25
  br i1 %26, label %27, label %108

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %101, %27
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %33 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %32, i32 0, i32 2
  %34 = bitcast %union.anon* %33 to %struct.anon.2*
  %35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = icmp slt i32 %31, %37
  br i1 %38, label %39, label %104

39:                                               ; preds = %30
  %40 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %41 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %40, i32 0, i32 2
  %42 = bitcast %union.anon* %41 to %struct.anon.2*
  %43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 2
  %44 = load %struct.__db_lsn*, %struct.__db_lsn** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %44, i64 %46
  %48 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %49 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %48, i32 0, i32 2
  %50 = bitcast %union.anon* %49 to %struct.anon.2*
  %51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 2
  %52 = load %struct.__db_lsn*, %struct.__db_lsn** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %52, i64 %55
  %57 = call i32 @log_compare(%struct.__db_lsn* noundef %47, %struct.__db_lsn* noundef %56)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %39
  %60 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %61 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %60, i32 0, i32 2
  %62 = bitcast %union.anon* %61 to %struct.anon.2*
  %63 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 2
  %64 = load %struct.__db_lsn*, %struct.__db_lsn** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %64, i64 %66
  %68 = bitcast %struct.__db_lsn* %11 to i8*
  %69 = bitcast %struct.__db_lsn* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 8, i1 false)
  %70 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %71 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %70, i32 0, i32 2
  %72 = bitcast %union.anon* %71 to %struct.anon.2*
  %73 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %72, i32 0, i32 2
  %74 = load %struct.__db_lsn*, %struct.__db_lsn** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %74, i64 %76
  %78 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %79 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %78, i32 0, i32 2
  %80 = bitcast %union.anon* %79 to %struct.anon.2*
  %81 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %80, i32 0, i32 2
  %82 = load %struct.__db_lsn*, %struct.__db_lsn** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %82, i64 %85
  %87 = bitcast %struct.__db_lsn* %77 to i8*
  %88 = bitcast %struct.__db_lsn* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 8, i1 false)
  %89 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %90 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %89, i32 0, i32 2
  %91 = bitcast %union.anon* %90 to %struct.anon.2*
  %92 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %91, i32 0, i32 2
  %93 = load %struct.__db_lsn*, %struct.__db_lsn** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %93, i64 %96
  %98 = bitcast %struct.__db_lsn* %97 to i8*
  %99 = bitcast %struct.__db_lsn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 8, i1 false)
  br label %100

100:                                              ; preds = %59, %39
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %30, !llvm.loop !4

104:                                              ; preds = %30
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %12, !llvm.loop !6

108:                                              ; preds = %24
  %109 = load %struct.__db_lsn*, %struct.__db_lsn** %7, align 8
  %110 = load %struct.__db_txnlist*, %struct.__db_txnlist** %6, align 8
  %111 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %110, i32 0, i32 2
  %112 = bitcast %union.anon* %111 to %struct.anon.2*
  %113 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %112, i32 0, i32 2
  %114 = load %struct.__db_lsn*, %struct.__db_lsn** %113, align 8
  %115 = getelementptr inbounds %struct.__db_lsn, %struct.__db_lsn* %114, i64 0
  %116 = bitcast %struct.__db_lsn* %109 to i8*
  %117 = bitcast %struct.__db_lsn* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 8, i1 false)
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.__db_txnlist, align 8
  %3 = alloca %struct.__db_lsn, align 4
  %4 = alloca [1235 x %struct.__db_lsn], align 16
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %2, i32 0, i32 2
  %6 = bitcast %union.anon* %5 to %struct.anon.2*
  %7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0
  store i32 1234, i32* %7, align 8
  %8 = getelementptr inbounds [1235 x %struct.__db_lsn], [1235 x %struct.__db_lsn]* %4, i64 0, i64 0
  %9 = getelementptr inbounds %struct.__db_txnlist, %struct.__db_txnlist* %2, i32 0, i32 2
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 2
  store %struct.__db_lsn* %8, %struct.__db_lsn** %11, align 8
  %12 = call i32 @__db_txnlist_lsnadd(i32 noundef 0, %struct.__db_txnlist* noundef %2, %struct.__db_lsn* noundef %3, i32 noundef 0)
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  call void @abort() #3
  unreachable

15:                                               ; preds = %0
  %16 = call i32 @__db_txnlist_lsnadd(i32 noundef 0, %struct.__db_txnlist* noundef %2, %struct.__db_lsn* noundef %3, i32 noundef 1)
  %17 = icmp ne i32 %16, 1234
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #3
  unreachable

19:                                               ; preds = %15
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
